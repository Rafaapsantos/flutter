import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_pokemon_model.freezed.dart';
part 'favorite_pokemon_model.g.dart';

@freezed
abstract class FavoritePokemonModel with _$FavoritePokemonModel {
  const factory FavoritePokemonModel({
    required int id,
    required String name,
    required String imageUrl,
    required List<String> types,
  }) = _FavoritePokemonModel;

  factory FavoritePokemonModel.fromJson(Map<String, dynamic> json) =>
      _$FavoritePokemonModelFromJson(json);
}

extension FavoritePokemonModelDb on FavoritePokemonModel {
  Map<String, dynamic> toMap() => {
    'id': id,
    'name': name,
    'imageUrl': imageUrl,
    'types': types.join(','),
  };

  static FavoritePokemonModel fromMap(Map<String, dynamic> map) =>
      FavoritePokemonModel(
        id: map['id'],
        name: map['name'],
        imageUrl: map['imageUrl'],
        types:
            map['types'] != null
                ? map['types'].toString().split(',')
                : <String>[],
      );
}
