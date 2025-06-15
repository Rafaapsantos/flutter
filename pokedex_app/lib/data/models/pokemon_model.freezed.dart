// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PokemonModel {

 int get id; List<Forms> get forms; List<Types> get types; Sprites get sprites; int get height; int get weight; List<Stats> get stats;
/// Create a copy of PokemonModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PokemonModelCopyWith<PokemonModel> get copyWith => _$PokemonModelCopyWithImpl<PokemonModel>(this as PokemonModel, _$identity);

  /// Serializes this PokemonModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PokemonModel&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.forms, forms)&&const DeepCollectionEquality().equals(other.types, types)&&(identical(other.sprites, sprites) || other.sprites == sprites)&&(identical(other.height, height) || other.height == height)&&(identical(other.weight, weight) || other.weight == weight)&&const DeepCollectionEquality().equals(other.stats, stats));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(forms),const DeepCollectionEquality().hash(types),sprites,height,weight,const DeepCollectionEquality().hash(stats));

@override
String toString() {
  return 'PokemonModel(id: $id, forms: $forms, types: $types, sprites: $sprites, height: $height, weight: $weight, stats: $stats)';
}


}

/// @nodoc
abstract mixin class $PokemonModelCopyWith<$Res>  {
  factory $PokemonModelCopyWith(PokemonModel value, $Res Function(PokemonModel) _then) = _$PokemonModelCopyWithImpl;
@useResult
$Res call({
 int id, List<Forms> forms, List<Types> types, Sprites sprites, int height, int weight, List<Stats> stats
});


$SpritesCopyWith<$Res> get sprites;

}
/// @nodoc
class _$PokemonModelCopyWithImpl<$Res>
    implements $PokemonModelCopyWith<$Res> {
  _$PokemonModelCopyWithImpl(this._self, this._then);

  final PokemonModel _self;
  final $Res Function(PokemonModel) _then;

/// Create a copy of PokemonModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? forms = null,Object? types = null,Object? sprites = null,Object? height = null,Object? weight = null,Object? stats = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,forms: null == forms ? _self.forms : forms // ignore: cast_nullable_to_non_nullable
as List<Forms>,types: null == types ? _self.types : types // ignore: cast_nullable_to_non_nullable
as List<Types>,sprites: null == sprites ? _self.sprites : sprites // ignore: cast_nullable_to_non_nullable
as Sprites,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as int,stats: null == stats ? _self.stats : stats // ignore: cast_nullable_to_non_nullable
as List<Stats>,
  ));
}
/// Create a copy of PokemonModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SpritesCopyWith<$Res> get sprites {
  
  return $SpritesCopyWith<$Res>(_self.sprites, (value) {
    return _then(_self.copyWith(sprites: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _PokemonModel implements PokemonModel {
  const _PokemonModel({required this.id, required final  List<Forms> forms, required final  List<Types> types, required this.sprites, required this.height, required this.weight, required final  List<Stats> stats}): _forms = forms,_types = types,_stats = stats;
  factory _PokemonModel.fromJson(Map<String, dynamic> json) => _$PokemonModelFromJson(json);

@override final  int id;
 final  List<Forms> _forms;
@override List<Forms> get forms {
  if (_forms is EqualUnmodifiableListView) return _forms;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_forms);
}

 final  List<Types> _types;
@override List<Types> get types {
  if (_types is EqualUnmodifiableListView) return _types;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_types);
}

@override final  Sprites sprites;
@override final  int height;
@override final  int weight;
 final  List<Stats> _stats;
@override List<Stats> get stats {
  if (_stats is EqualUnmodifiableListView) return _stats;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_stats);
}


/// Create a copy of PokemonModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PokemonModelCopyWith<_PokemonModel> get copyWith => __$PokemonModelCopyWithImpl<_PokemonModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PokemonModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PokemonModel&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other._forms, _forms)&&const DeepCollectionEquality().equals(other._types, _types)&&(identical(other.sprites, sprites) || other.sprites == sprites)&&(identical(other.height, height) || other.height == height)&&(identical(other.weight, weight) || other.weight == weight)&&const DeepCollectionEquality().equals(other._stats, _stats));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(_forms),const DeepCollectionEquality().hash(_types),sprites,height,weight,const DeepCollectionEquality().hash(_stats));

@override
String toString() {
  return 'PokemonModel(id: $id, forms: $forms, types: $types, sprites: $sprites, height: $height, weight: $weight, stats: $stats)';
}


}

/// @nodoc
abstract mixin class _$PokemonModelCopyWith<$Res> implements $PokemonModelCopyWith<$Res> {
  factory _$PokemonModelCopyWith(_PokemonModel value, $Res Function(_PokemonModel) _then) = __$PokemonModelCopyWithImpl;
@override @useResult
$Res call({
 int id, List<Forms> forms, List<Types> types, Sprites sprites, int height, int weight, List<Stats> stats
});


@override $SpritesCopyWith<$Res> get sprites;

}
/// @nodoc
class __$PokemonModelCopyWithImpl<$Res>
    implements _$PokemonModelCopyWith<$Res> {
  __$PokemonModelCopyWithImpl(this._self, this._then);

  final _PokemonModel _self;
  final $Res Function(_PokemonModel) _then;

/// Create a copy of PokemonModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? forms = null,Object? types = null,Object? sprites = null,Object? height = null,Object? weight = null,Object? stats = null,}) {
  return _then(_PokemonModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,forms: null == forms ? _self._forms : forms // ignore: cast_nullable_to_non_nullable
as List<Forms>,types: null == types ? _self._types : types // ignore: cast_nullable_to_non_nullable
as List<Types>,sprites: null == sprites ? _self.sprites : sprites // ignore: cast_nullable_to_non_nullable
as Sprites,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as int,stats: null == stats ? _self._stats : stats // ignore: cast_nullable_to_non_nullable
as List<Stats>,
  ));
}

/// Create a copy of PokemonModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SpritesCopyWith<$Res> get sprites {
  
  return $SpritesCopyWith<$Res>(_self.sprites, (value) {
    return _then(_self.copyWith(sprites: value));
  });
}
}


/// @nodoc
mixin _$Forms {

 String get name; String get url;
/// Create a copy of Forms
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FormsCopyWith<Forms> get copyWith => _$FormsCopyWithImpl<Forms>(this as Forms, _$identity);

  /// Serializes this Forms to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Forms&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,url);

@override
String toString() {
  return 'Forms(name: $name, url: $url)';
}


}

/// @nodoc
abstract mixin class $FormsCopyWith<$Res>  {
  factory $FormsCopyWith(Forms value, $Res Function(Forms) _then) = _$FormsCopyWithImpl;
@useResult
$Res call({
 String name, String url
});




}
/// @nodoc
class _$FormsCopyWithImpl<$Res>
    implements $FormsCopyWith<$Res> {
  _$FormsCopyWithImpl(this._self, this._then);

  final Forms _self;
  final $Res Function(Forms) _then;

/// Create a copy of Forms
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? url = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Forms implements Forms {
  const _Forms({required this.name, required this.url});
  factory _Forms.fromJson(Map<String, dynamic> json) => _$FormsFromJson(json);

@override final  String name;
@override final  String url;

/// Create a copy of Forms
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FormsCopyWith<_Forms> get copyWith => __$FormsCopyWithImpl<_Forms>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FormsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Forms&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,url);

@override
String toString() {
  return 'Forms(name: $name, url: $url)';
}


}

/// @nodoc
abstract mixin class _$FormsCopyWith<$Res> implements $FormsCopyWith<$Res> {
  factory _$FormsCopyWith(_Forms value, $Res Function(_Forms) _then) = __$FormsCopyWithImpl;
@override @useResult
$Res call({
 String name, String url
});




}
/// @nodoc
class __$FormsCopyWithImpl<$Res>
    implements _$FormsCopyWith<$Res> {
  __$FormsCopyWithImpl(this._self, this._then);

  final _Forms _self;
  final $Res Function(_Forms) _then;

/// Create a copy of Forms
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? url = null,}) {
  return _then(_Forms(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$Types {

 int get slot; Type get type;
/// Create a copy of Types
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TypesCopyWith<Types> get copyWith => _$TypesCopyWithImpl<Types>(this as Types, _$identity);

  /// Serializes this Types to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Types&&(identical(other.slot, slot) || other.slot == slot)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,slot,type);

@override
String toString() {
  return 'Types(slot: $slot, type: $type)';
}


}

/// @nodoc
abstract mixin class $TypesCopyWith<$Res>  {
  factory $TypesCopyWith(Types value, $Res Function(Types) _then) = _$TypesCopyWithImpl;
@useResult
$Res call({
 int slot, Type type
});


$TypeCopyWith<$Res> get type;

}
/// @nodoc
class _$TypesCopyWithImpl<$Res>
    implements $TypesCopyWith<$Res> {
  _$TypesCopyWithImpl(this._self, this._then);

  final Types _self;
  final $Res Function(Types) _then;

/// Create a copy of Types
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? slot = null,Object? type = null,}) {
  return _then(_self.copyWith(
slot: null == slot ? _self.slot : slot // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as Type,
  ));
}
/// Create a copy of Types
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TypeCopyWith<$Res> get type {
  
  return $TypeCopyWith<$Res>(_self.type, (value) {
    return _then(_self.copyWith(type: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _Types implements Types {
  const _Types({required this.slot, required this.type});
  factory _Types.fromJson(Map<String, dynamic> json) => _$TypesFromJson(json);

@override final  int slot;
@override final  Type type;

/// Create a copy of Types
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TypesCopyWith<_Types> get copyWith => __$TypesCopyWithImpl<_Types>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TypesToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Types&&(identical(other.slot, slot) || other.slot == slot)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,slot,type);

@override
String toString() {
  return 'Types(slot: $slot, type: $type)';
}


}

/// @nodoc
abstract mixin class _$TypesCopyWith<$Res> implements $TypesCopyWith<$Res> {
  factory _$TypesCopyWith(_Types value, $Res Function(_Types) _then) = __$TypesCopyWithImpl;
@override @useResult
$Res call({
 int slot, Type type
});


@override $TypeCopyWith<$Res> get type;

}
/// @nodoc
class __$TypesCopyWithImpl<$Res>
    implements _$TypesCopyWith<$Res> {
  __$TypesCopyWithImpl(this._self, this._then);

  final _Types _self;
  final $Res Function(_Types) _then;

/// Create a copy of Types
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? slot = null,Object? type = null,}) {
  return _then(_Types(
slot: null == slot ? _self.slot : slot // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as Type,
  ));
}

/// Create a copy of Types
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TypeCopyWith<$Res> get type {
  
  return $TypeCopyWith<$Res>(_self.type, (value) {
    return _then(_self.copyWith(type: value));
  });
}
}


/// @nodoc
mixin _$Type {

@PokemonTypeConverter() PokemonType get name; String get url;
/// Create a copy of Type
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TypeCopyWith<Type> get copyWith => _$TypeCopyWithImpl<Type>(this as Type, _$identity);

  /// Serializes this Type to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Type&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,url);

@override
String toString() {
  return 'Type(name: $name, url: $url)';
}


}

/// @nodoc
abstract mixin class $TypeCopyWith<$Res>  {
  factory $TypeCopyWith(Type value, $Res Function(Type) _then) = _$TypeCopyWithImpl;
@useResult
$Res call({
@PokemonTypeConverter() PokemonType name, String url
});




}
/// @nodoc
class _$TypeCopyWithImpl<$Res>
    implements $TypeCopyWith<$Res> {
  _$TypeCopyWithImpl(this._self, this._then);

  final Type _self;
  final $Res Function(Type) _then;

/// Create a copy of Type
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? url = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as PokemonType,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Type implements Type {
  const _Type({@PokemonTypeConverter() required this.name, required this.url});
  factory _Type.fromJson(Map<String, dynamic> json) => _$TypeFromJson(json);

@override@PokemonTypeConverter() final  PokemonType name;
@override final  String url;

/// Create a copy of Type
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TypeCopyWith<_Type> get copyWith => __$TypeCopyWithImpl<_Type>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TypeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Type&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,url);

@override
String toString() {
  return 'Type(name: $name, url: $url)';
}


}

/// @nodoc
abstract mixin class _$TypeCopyWith<$Res> implements $TypeCopyWith<$Res> {
  factory _$TypeCopyWith(_Type value, $Res Function(_Type) _then) = __$TypeCopyWithImpl;
@override @useResult
$Res call({
@PokemonTypeConverter() PokemonType name, String url
});




}
/// @nodoc
class __$TypeCopyWithImpl<$Res>
    implements _$TypeCopyWith<$Res> {
  __$TypeCopyWithImpl(this._self, this._then);

  final _Type _self;
  final $Res Function(_Type) _then;

/// Create a copy of Type
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? url = null,}) {
  return _then(_Type(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as PokemonType,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$Sprites {

 Other get other;
/// Create a copy of Sprites
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpritesCopyWith<Sprites> get copyWith => _$SpritesCopyWithImpl<Sprites>(this as Sprites, _$identity);

  /// Serializes this Sprites to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Sprites&&(identical(other.other, this.other) || other.other == this.other));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,other);

@override
String toString() {
  return 'Sprites(other: $other)';
}


}

/// @nodoc
abstract mixin class $SpritesCopyWith<$Res>  {
  factory $SpritesCopyWith(Sprites value, $Res Function(Sprites) _then) = _$SpritesCopyWithImpl;
@useResult
$Res call({
 Other other
});


$OtherCopyWith<$Res> get other;

}
/// @nodoc
class _$SpritesCopyWithImpl<$Res>
    implements $SpritesCopyWith<$Res> {
  _$SpritesCopyWithImpl(this._self, this._then);

  final Sprites _self;
  final $Res Function(Sprites) _then;

/// Create a copy of Sprites
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? other = null,}) {
  return _then(_self.copyWith(
other: null == other ? _self.other : other // ignore: cast_nullable_to_non_nullable
as Other,
  ));
}
/// Create a copy of Sprites
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OtherCopyWith<$Res> get other {
  
  return $OtherCopyWith<$Res>(_self.other, (value) {
    return _then(_self.copyWith(other: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _Sprites implements Sprites {
  const _Sprites({required this.other});
  factory _Sprites.fromJson(Map<String, dynamic> json) => _$SpritesFromJson(json);

@override final  Other other;

/// Create a copy of Sprites
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SpritesCopyWith<_Sprites> get copyWith => __$SpritesCopyWithImpl<_Sprites>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SpritesToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Sprites&&(identical(other.other, this.other) || other.other == this.other));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,other);

@override
String toString() {
  return 'Sprites(other: $other)';
}


}

/// @nodoc
abstract mixin class _$SpritesCopyWith<$Res> implements $SpritesCopyWith<$Res> {
  factory _$SpritesCopyWith(_Sprites value, $Res Function(_Sprites) _then) = __$SpritesCopyWithImpl;
@override @useResult
$Res call({
 Other other
});


@override $OtherCopyWith<$Res> get other;

}
/// @nodoc
class __$SpritesCopyWithImpl<$Res>
    implements _$SpritesCopyWith<$Res> {
  __$SpritesCopyWithImpl(this._self, this._then);

  final _Sprites _self;
  final $Res Function(_Sprites) _then;

/// Create a copy of Sprites
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? other = null,}) {
  return _then(_Sprites(
other: null == other ? _self.other : other // ignore: cast_nullable_to_non_nullable
as Other,
  ));
}

/// Create a copy of Sprites
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OtherCopyWith<$Res> get other {
  
  return $OtherCopyWith<$Res>(_self.other, (value) {
    return _then(_self.copyWith(other: value));
  });
}
}


/// @nodoc
mixin _$Other {

@JsonKey(name: 'official-artwork') OfficialArtWork get officialArtwork;
/// Create a copy of Other
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OtherCopyWith<Other> get copyWith => _$OtherCopyWithImpl<Other>(this as Other, _$identity);

  /// Serializes this Other to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Other&&(identical(other.officialArtwork, officialArtwork) || other.officialArtwork == officialArtwork));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,officialArtwork);

@override
String toString() {
  return 'Other(officialArtwork: $officialArtwork)';
}


}

/// @nodoc
abstract mixin class $OtherCopyWith<$Res>  {
  factory $OtherCopyWith(Other value, $Res Function(Other) _then) = _$OtherCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'official-artwork') OfficialArtWork officialArtwork
});


$OfficialArtWorkCopyWith<$Res> get officialArtwork;

}
/// @nodoc
class _$OtherCopyWithImpl<$Res>
    implements $OtherCopyWith<$Res> {
  _$OtherCopyWithImpl(this._self, this._then);

  final Other _self;
  final $Res Function(Other) _then;

/// Create a copy of Other
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? officialArtwork = null,}) {
  return _then(_self.copyWith(
officialArtwork: null == officialArtwork ? _self.officialArtwork : officialArtwork // ignore: cast_nullable_to_non_nullable
as OfficialArtWork,
  ));
}
/// Create a copy of Other
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OfficialArtWorkCopyWith<$Res> get officialArtwork {
  
  return $OfficialArtWorkCopyWith<$Res>(_self.officialArtwork, (value) {
    return _then(_self.copyWith(officialArtwork: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _Other implements Other {
  const _Other({@JsonKey(name: 'official-artwork') required this.officialArtwork});
  factory _Other.fromJson(Map<String, dynamic> json) => _$OtherFromJson(json);

@override@JsonKey(name: 'official-artwork') final  OfficialArtWork officialArtwork;

/// Create a copy of Other
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OtherCopyWith<_Other> get copyWith => __$OtherCopyWithImpl<_Other>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OtherToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Other&&(identical(other.officialArtwork, officialArtwork) || other.officialArtwork == officialArtwork));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,officialArtwork);

@override
String toString() {
  return 'Other(officialArtwork: $officialArtwork)';
}


}

/// @nodoc
abstract mixin class _$OtherCopyWith<$Res> implements $OtherCopyWith<$Res> {
  factory _$OtherCopyWith(_Other value, $Res Function(_Other) _then) = __$OtherCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'official-artwork') OfficialArtWork officialArtwork
});


@override $OfficialArtWorkCopyWith<$Res> get officialArtwork;

}
/// @nodoc
class __$OtherCopyWithImpl<$Res>
    implements _$OtherCopyWith<$Res> {
  __$OtherCopyWithImpl(this._self, this._then);

  final _Other _self;
  final $Res Function(_Other) _then;

/// Create a copy of Other
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? officialArtwork = null,}) {
  return _then(_Other(
officialArtwork: null == officialArtwork ? _self.officialArtwork : officialArtwork // ignore: cast_nullable_to_non_nullable
as OfficialArtWork,
  ));
}

/// Create a copy of Other
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OfficialArtWorkCopyWith<$Res> get officialArtwork {
  
  return $OfficialArtWorkCopyWith<$Res>(_self.officialArtwork, (value) {
    return _then(_self.copyWith(officialArtwork: value));
  });
}
}


/// @nodoc
mixin _$OfficialArtWork {

@JsonKey(name: 'front_default') String get image;
/// Create a copy of OfficialArtWork
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OfficialArtWorkCopyWith<OfficialArtWork> get copyWith => _$OfficialArtWorkCopyWithImpl<OfficialArtWork>(this as OfficialArtWork, _$identity);

  /// Serializes this OfficialArtWork to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OfficialArtWork&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,image);

@override
String toString() {
  return 'OfficialArtWork(image: $image)';
}


}

/// @nodoc
abstract mixin class $OfficialArtWorkCopyWith<$Res>  {
  factory $OfficialArtWorkCopyWith(OfficialArtWork value, $Res Function(OfficialArtWork) _then) = _$OfficialArtWorkCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'front_default') String image
});




}
/// @nodoc
class _$OfficialArtWorkCopyWithImpl<$Res>
    implements $OfficialArtWorkCopyWith<$Res> {
  _$OfficialArtWorkCopyWithImpl(this._self, this._then);

  final OfficialArtWork _self;
  final $Res Function(OfficialArtWork) _then;

/// Create a copy of OfficialArtWork
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? image = null,}) {
  return _then(_self.copyWith(
image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _OfficialArtWork implements OfficialArtWork {
  const _OfficialArtWork({@JsonKey(name: 'front_default') required this.image});
  factory _OfficialArtWork.fromJson(Map<String, dynamic> json) => _$OfficialArtWorkFromJson(json);

@override@JsonKey(name: 'front_default') final  String image;

/// Create a copy of OfficialArtWork
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OfficialArtWorkCopyWith<_OfficialArtWork> get copyWith => __$OfficialArtWorkCopyWithImpl<_OfficialArtWork>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OfficialArtWorkToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OfficialArtWork&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,image);

@override
String toString() {
  return 'OfficialArtWork(image: $image)';
}


}

/// @nodoc
abstract mixin class _$OfficialArtWorkCopyWith<$Res> implements $OfficialArtWorkCopyWith<$Res> {
  factory _$OfficialArtWorkCopyWith(_OfficialArtWork value, $Res Function(_OfficialArtWork) _then) = __$OfficialArtWorkCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'front_default') String image
});




}
/// @nodoc
class __$OfficialArtWorkCopyWithImpl<$Res>
    implements _$OfficialArtWorkCopyWith<$Res> {
  __$OfficialArtWorkCopyWithImpl(this._self, this._then);

  final _OfficialArtWork _self;
  final $Res Function(_OfficialArtWork) _then;

/// Create a copy of OfficialArtWork
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? image = null,}) {
  return _then(_OfficialArtWork(
image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$Stats {

@JsonKey(name: 'base_stat') int get baseStat; Stat get stat;
/// Create a copy of Stats
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StatsCopyWith<Stats> get copyWith => _$StatsCopyWithImpl<Stats>(this as Stats, _$identity);

  /// Serializes this Stats to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Stats&&(identical(other.baseStat, baseStat) || other.baseStat == baseStat)&&(identical(other.stat, stat) || other.stat == stat));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,baseStat,stat);

@override
String toString() {
  return 'Stats(baseStat: $baseStat, stat: $stat)';
}


}

/// @nodoc
abstract mixin class $StatsCopyWith<$Res>  {
  factory $StatsCopyWith(Stats value, $Res Function(Stats) _then) = _$StatsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'base_stat') int baseStat, Stat stat
});


$StatCopyWith<$Res> get stat;

}
/// @nodoc
class _$StatsCopyWithImpl<$Res>
    implements $StatsCopyWith<$Res> {
  _$StatsCopyWithImpl(this._self, this._then);

  final Stats _self;
  final $Res Function(Stats) _then;

/// Create a copy of Stats
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? baseStat = null,Object? stat = null,}) {
  return _then(_self.copyWith(
baseStat: null == baseStat ? _self.baseStat : baseStat // ignore: cast_nullable_to_non_nullable
as int,stat: null == stat ? _self.stat : stat // ignore: cast_nullable_to_non_nullable
as Stat,
  ));
}
/// Create a copy of Stats
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StatCopyWith<$Res> get stat {
  
  return $StatCopyWith<$Res>(_self.stat, (value) {
    return _then(_self.copyWith(stat: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _Stats implements Stats {
  const _Stats({@JsonKey(name: 'base_stat') required this.baseStat, required this.stat});
  factory _Stats.fromJson(Map<String, dynamic> json) => _$StatsFromJson(json);

@override@JsonKey(name: 'base_stat') final  int baseStat;
@override final  Stat stat;

/// Create a copy of Stats
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StatsCopyWith<_Stats> get copyWith => __$StatsCopyWithImpl<_Stats>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StatsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Stats&&(identical(other.baseStat, baseStat) || other.baseStat == baseStat)&&(identical(other.stat, stat) || other.stat == stat));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,baseStat,stat);

@override
String toString() {
  return 'Stats(baseStat: $baseStat, stat: $stat)';
}


}

/// @nodoc
abstract mixin class _$StatsCopyWith<$Res> implements $StatsCopyWith<$Res> {
  factory _$StatsCopyWith(_Stats value, $Res Function(_Stats) _then) = __$StatsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'base_stat') int baseStat, Stat stat
});


@override $StatCopyWith<$Res> get stat;

}
/// @nodoc
class __$StatsCopyWithImpl<$Res>
    implements _$StatsCopyWith<$Res> {
  __$StatsCopyWithImpl(this._self, this._then);

  final _Stats _self;
  final $Res Function(_Stats) _then;

/// Create a copy of Stats
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? baseStat = null,Object? stat = null,}) {
  return _then(_Stats(
baseStat: null == baseStat ? _self.baseStat : baseStat // ignore: cast_nullable_to_non_nullable
as int,stat: null == stat ? _self.stat : stat // ignore: cast_nullable_to_non_nullable
as Stat,
  ));
}

/// Create a copy of Stats
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StatCopyWith<$Res> get stat {
  
  return $StatCopyWith<$Res>(_self.stat, (value) {
    return _then(_self.copyWith(stat: value));
  });
}
}


/// @nodoc
mixin _$Stat {

 String get name; String get url;
/// Create a copy of Stat
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StatCopyWith<Stat> get copyWith => _$StatCopyWithImpl<Stat>(this as Stat, _$identity);

  /// Serializes this Stat to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Stat&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,url);

@override
String toString() {
  return 'Stat(name: $name, url: $url)';
}


}

/// @nodoc
abstract mixin class $StatCopyWith<$Res>  {
  factory $StatCopyWith(Stat value, $Res Function(Stat) _then) = _$StatCopyWithImpl;
@useResult
$Res call({
 String name, String url
});




}
/// @nodoc
class _$StatCopyWithImpl<$Res>
    implements $StatCopyWith<$Res> {
  _$StatCopyWithImpl(this._self, this._then);

  final Stat _self;
  final $Res Function(Stat) _then;

/// Create a copy of Stat
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? url = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Stat implements Stat {
  const _Stat({required this.name, required this.url});
  factory _Stat.fromJson(Map<String, dynamic> json) => _$StatFromJson(json);

@override final  String name;
@override final  String url;

/// Create a copy of Stat
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StatCopyWith<_Stat> get copyWith => __$StatCopyWithImpl<_Stat>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StatToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Stat&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,url);

@override
String toString() {
  return 'Stat(name: $name, url: $url)';
}


}

/// @nodoc
abstract mixin class _$StatCopyWith<$Res> implements $StatCopyWith<$Res> {
  factory _$StatCopyWith(_Stat value, $Res Function(_Stat) _then) = __$StatCopyWithImpl;
@override @useResult
$Res call({
 String name, String url
});




}
/// @nodoc
class __$StatCopyWithImpl<$Res>
    implements _$StatCopyWith<$Res> {
  __$StatCopyWithImpl(this._self, this._then);

  final _Stat _self;
  final $Res Function(_Stat) _then;

/// Create a copy of Stat
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? url = null,}) {
  return _then(_Stat(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
