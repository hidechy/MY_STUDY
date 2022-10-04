// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart = 2.12

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'generated.graphql.g.dart';

mixin PokemonFieldMixin {
  late String id;
  String? name;
  String? image;
  List<String?>? types;
}

@JsonSerializable(explicitToJson: true)
class SearchPokemons$Query$Pokemon extends JsonSerializable
    with EquatableMixin, PokemonFieldMixin {
  SearchPokemons$Query$Pokemon();

  factory SearchPokemons$Query$Pokemon.fromJson(Map<String, dynamic> json) =>
      _$SearchPokemons$Query$PokemonFromJson(json);

  @override
  List<Object?> get props => [id, name, image, types];
  @override
  Map<String, dynamic> toJson() => _$SearchPokemons$Query$PokemonToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SearchPokemons$Query extends JsonSerializable with EquatableMixin {
  SearchPokemons$Query();

  factory SearchPokemons$Query.fromJson(Map<String, dynamic> json) =>
      _$SearchPokemons$QueryFromJson(json);

  List<SearchPokemons$Query$Pokemon?>? pokemons;

  @override
  List<Object?> get props => [pokemons];
  @override
  Map<String, dynamic> toJson() => _$SearchPokemons$QueryToJson(this);
}

final SEARCH_POKEMONS_QUERY_DOCUMENT_OPERATION_NAME = 'searchPokemons';
final SEARCH_POKEMONS_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'searchPokemons'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'pokemons'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'first'),
                  value: IntValueNode(value: '20'))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                  name: NameNode(value: 'pokemonField'), directives: [])
            ]))
      ])),
  FragmentDefinitionNode(
      name: NameNode(value: 'pokemonField'),
      typeCondition: TypeConditionNode(
          on: NamedTypeNode(
              name: NameNode(value: 'Pokemon'), isNonNull: false)),
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'image'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'types'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ]))
]);

class SearchPokemonsQuery
    extends GraphQLQuery<SearchPokemons$Query, JsonSerializable> {
  SearchPokemonsQuery();

  @override
  final DocumentNode document = SEARCH_POKEMONS_QUERY_DOCUMENT;

  @override
  final String operationName = SEARCH_POKEMONS_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  List<Object?> get props => [document, operationName];
  @override
  SearchPokemons$Query parse(Map<String, dynamic> json) =>
      SearchPokemons$Query.fromJson(json);
}
