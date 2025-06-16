// ignore_for_file: invalid_annotation_target

import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex_app/core/themes/app_colors.dart';

part 'pokemon_model.freezed.dart';
part 'pokemon_model.g.dart';

//Representa um Pokémon com os principais atributos
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

//Representa o nome e URL de um Pokémon
@freezed
abstract class Forms with _$Forms {
  const factory Forms({required String name, required String url}) = _Forms;

  factory Forms.fromJson(Map<String, Object?> json) => _$FormsFromJson(json);
}

//Define os tipos do Pokémon, com posição (slot) e o tipo em si (type).
@freezed
abstract class Types with _$Types {
  const factory Types({required int slot, required Type type}) = _Types;

  factory Types.fromJson(Map<String, Object?> json) => _$TypesFromJson(json);
}

//Contém o nome e a URL do tipo. Usa o conversor
// para transformar o nome em um enum PokemonType.
@freezed
abstract class Type with _$Type {
  const factory Type({
    @PokemonTypeConverter() required PokemonType name,
    required String url,
  }) = _Type;

  factory Type.fromJson(Map<String, Object?> json) => _$TypeFromJson(json);
}

//Representam as imagens oficiais do Pokémon
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

//Representam as estatísticas do Pokémon
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

//Define todos os tipos possíveis de Pokémon e associa uma cor a cada tipo
enum PokemonType {
  normal(AppColors.normal),
  fire(AppColors.fire),
  water(AppColors.water),
  grass(AppColors.grass),
  electric(AppColors.electric),
  ice(AppColors.ice),
  fighting(AppColors.fighting),
  poison(AppColors.poison),
  ground(AppColors.ground),
  flying(AppColors.flying),
  psychic(AppColors.psychic),
  bug(AppColors.bug),
  rock(AppColors.rock),
  ghost(AppColors.ghost),
  dragon(AppColors.dragon),
  steel(AppColors.steel),
  fairy(AppColors.fairy),
  dark(AppColors.dark),
  stellar(AppColors.stellar),
  unknown(AppColors.unknown);

  const PokemonType(this.color);

  final Color color;
}

//Conversor que transforma o nome do tipo(string)
//para o enum PokemonType automaticamente durante a conversão JSON.

class PokemonTypeConverter implements JsonConverter<PokemonType, String> {
  const PokemonTypeConverter();

  @override
  PokemonType fromJson(String json) => PokemonType.values.firstWhere(
    (e) => e.name.toLowerCase() == json.toLowerCase(),
    orElse: () => PokemonType.unknown,
  );

  @override
  String toJson(PokemonType object) => object.name;
}
