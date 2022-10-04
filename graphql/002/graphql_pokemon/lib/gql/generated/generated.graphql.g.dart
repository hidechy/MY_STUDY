// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.12

part of 'generated.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchPokemons$Query$Pokemon _$SearchPokemons$Query$PokemonFromJson(
        Map<String, dynamic> json) =>
    SearchPokemons$Query$Pokemon()
      ..id = json['id'] as String
      ..name = json['name'] as String?
      ..image = json['image'] as String?
      ..types =
          (json['types'] as List<dynamic>?)?.map((e) => e as String?).toList();

Map<String, dynamic> _$SearchPokemons$Query$PokemonToJson(
        SearchPokemons$Query$Pokemon instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'types': instance.types,
    };

SearchPokemons$Query _$SearchPokemons$QueryFromJson(
        Map<String, dynamic> json) =>
    SearchPokemons$Query()
      ..pokemons = (json['pokemons'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : SearchPokemons$Query$Pokemon.fromJson(
                  e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$SearchPokemons$QueryToJson(
        SearchPokemons$Query instance) =>
    <String, dynamic>{
      'pokemons': instance.pokemons?.map((e) => e?.toJson()).toList(),
    };
