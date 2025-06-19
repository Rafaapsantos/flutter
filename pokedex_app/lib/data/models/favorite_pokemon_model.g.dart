// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_pokemon_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FavoritePokemonModel _$FavoritePokemonModelFromJson(
  Map<String, dynamic> json,
) => _FavoritePokemonModel(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  imageUrl: json['imageUrl'] as String,
  types: (json['types'] as List<dynamic>).map((e) => e as String).toList(),
);

Map<String, dynamic> _$FavoritePokemonModelToJson(
  _FavoritePokemonModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'imageUrl': instance.imageUrl,
  'types': instance.types,
};
