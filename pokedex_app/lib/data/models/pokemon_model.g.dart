// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PokemonModel _$PokemonModelFromJson(Map<String, dynamic> json) =>
    _PokemonModel(
      id: (json['id'] as num).toInt(),
      forms:
          (json['forms'] as List<dynamic>)
              .map((e) => Forms.fromJson(e as Map<String, dynamic>))
              .toList(),
      types:
          (json['types'] as List<dynamic>)
              .map((e) => Types.fromJson(e as Map<String, dynamic>))
              .toList(),
      sprites: Sprites.fromJson(json['sprites'] as Map<String, dynamic>),
      height: (json['height'] as num).toInt(),
      weight: (json['weight'] as num).toInt(),
      stats:
          (json['stats'] as List<dynamic>)
              .map((e) => Stats.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$PokemonModelToJson(_PokemonModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'forms': instance.forms,
      'types': instance.types,
      'sprites': instance.sprites,
      'height': instance.height,
      'weight': instance.weight,
      'stats': instance.stats,
    };

_Forms _$FormsFromJson(Map<String, dynamic> json) =>
    _Forms(name: json['name'] as String, url: json['url'] as String);

Map<String, dynamic> _$FormsToJson(_Forms instance) => <String, dynamic>{
  'name': instance.name,
  'url': instance.url,
};

_Types _$TypesFromJson(Map<String, dynamic> json) => _Types(
  slot: (json['slot'] as num).toInt(),
  type: Type.fromJson(json['type'] as Map<String, dynamic>),
);

Map<String, dynamic> _$TypesToJson(_Types instance) => <String, dynamic>{
  'slot': instance.slot,
  'type': instance.type,
};

_Type _$TypeFromJson(Map<String, dynamic> json) => _Type(
  name: const PokemonTypeConverter().fromJson(json['name'] as String),
  url: json['url'] as String,
);

Map<String, dynamic> _$TypeToJson(_Type instance) => <String, dynamic>{
  'name': const PokemonTypeConverter().toJson(instance.name),
  'url': instance.url,
};

_Sprites _$SpritesFromJson(Map<String, dynamic> json) =>
    _Sprites(other: Other.fromJson(json['other'] as Map<String, dynamic>));

Map<String, dynamic> _$SpritesToJson(_Sprites instance) => <String, dynamic>{
  'other': instance.other,
};

_Other _$OtherFromJson(Map<String, dynamic> json) => _Other(
  officialArtwork: OfficialArtWork.fromJson(
    json['official-artwork'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$OtherToJson(_Other instance) => <String, dynamic>{
  'official-artwork': instance.officialArtwork,
};

_OfficialArtWork _$OfficialArtWorkFromJson(Map<String, dynamic> json) =>
    _OfficialArtWork(image: json['front_default'] as String);

Map<String, dynamic> _$OfficialArtWorkToJson(_OfficialArtWork instance) =>
    <String, dynamic>{'front_default': instance.image};

_Stats _$StatsFromJson(Map<String, dynamic> json) => _Stats(
  baseStat: (json['base_stat'] as num).toInt(),
  stat: Stat.fromJson(json['stat'] as Map<String, dynamic>),
);

Map<String, dynamic> _$StatsToJson(_Stats instance) => <String, dynamic>{
  'base_stat': instance.baseStat,
  'stat': instance.stat,
};

_Stat _$StatFromJson(Map<String, dynamic> json) =>
    _Stat(name: json['name'] as String, url: json['url'] as String);

Map<String, dynamic> _$StatToJson(_Stat instance) => <String, dynamic>{
  'name': instance.name,
  'url': instance.url,
};
