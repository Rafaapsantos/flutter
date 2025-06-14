// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_model.freezed.dart';
part 'pokemon_model.g.dart';

@freezed
abstract class PokemonModel with _$PokemonModel {
  const factory PokemonModel({
    required int id,
    required List<Forms> forms,
    required List<Types> types,
    required Sprites sprites,
    required int height,
    required int weight,
    required List<Stats> stats,
  }) = _PokemonModel;

  factory PokemonModel.fromJson(Map<String, Object?> json) =>
      _$PokemonModelFromJson(json);
}

@freezed
abstract class Forms with _$Forms {
  const factory Forms({required String name, required String url}) = _Forms;

  factory Forms.fromJson(Map<String, Object?> json) => _$FormsFromJson(json);
}

@freezed
abstract class Types with _$Types {
  const factory Types({required int slot, required Type type}) = _Types;

  factory Types.fromJson(Map<String, Object?> json) => _$TypesFromJson(json);
}

@freezed
abstract class Type with _$Type {
  const factory Type({required String name, required String url}) = _Type;

  factory Type.fromJson(Map<String, Object?> json) => _$TypeFromJson(json);
}

@freezed
abstract class Sprites with _$Sprites {
  const factory Sprites({required Other other}) = _Sprites;

  factory Sprites.fromJson(Map<String, Object?> json) =>
      _$SpritesFromJson(json);
}

@freezed
abstract class Other with _$Other {
  const factory Other({
    @JsonKey(name: 'official-artwork') required OfficialArtWork officialArtwork,
  }) = _Other;

  factory Other.fromJson(Map<String, Object?> json) => _$OtherFromJson(json);
}

@freezed
abstract class OfficialArtWork with _$OfficialArtWork {
  const factory OfficialArtWork({
    @JsonKey(name: 'front_default') required String image,
  }) = _OfficialArtWork;

  factory OfficialArtWork.fromJson(Map<String, Object?> json) =>
      _$OfficialArtWorkFromJson(json);
}

@freezed
abstract class Stats with _$Stats {
  const factory Stats({
    @JsonKey(name: 'base_stat') required int baseStat,
    required Stat stat,
  }) = _Stats;

  factory Stats.fromJson(Map<String, Object?> json) => _$StatsFromJson(json);
}

@freezed
abstract class Stat with _$Stat {
  const factory Stat({required String name, required String url}) = _Stat;

  factory Stat.fromJson(Map<String, Object?> json) => _$StatFromJson(json);
}
