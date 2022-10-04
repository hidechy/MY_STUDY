import 'package:artemis/artemis.dart';
import 'package:flutter/material.dart';

import 'gql/generated/generated.dart';

///
void main() {
  runApp(const MyApp());
}

///
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: PokemonListView(),
    );
  }
}

///
class PokemonListView extends StatelessWidget {
  const PokemonListView({Key? key}) : super(key: key);

  ///
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pokemon List'),
      ),
      body: FutureBuilder<List<PokemonFieldMixin?>?>(
        future: searchPokemons(),
        builder: (context, snapshot) {
          if (snapshot.connectionState != ConnectionState.done) {
            return const Center(child: CircularProgressIndicator());
          }
          final pokemons = snapshot.data;
          if (pokemons == null) {
            return const Center(child: Text('データを取得できませんでした.'));
          }
          return ListView.separated(
            itemCount: pokemons.length,
            separatorBuilder: (context, index) {
              return const Divider(height: 0.5);
            },
            itemBuilder: (context, index) {
              final pokemon = pokemons[index];
              if (pokemon == null) {
                return const SizedBox();
              }
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(pokemon.image!),
                  backgroundColor: Colors.grey,
                ),
                // GraphQLを使用することによって補完が効く+データ型がString?であることも分かる
                title: Text(pokemon.name!),
                subtitle: Text('Type: ${pokemon.types!.join(',')}'),
              );
            },
          );
        },
      ),
    );
  }

  ///
  // fragmentで分けておいたのでPokemonFieldMixinと宣言できる
  Future<List<PokemonFieldMixin?>?> searchPokemons() async {
    final httpLink =
    Uri.parse('https://graphql-pokemon2.vercel.app').toString();
    final client = ArtemisClient(httpLink);
    // SearchPokemonsQuery()がクエリから自動生成した部分
    final response = await client.execute(SearchPokemonsQuery());
    return response.data!.pokemons;
  }
}
