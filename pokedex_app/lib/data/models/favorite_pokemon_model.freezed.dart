// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_pokemon_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FavoritePokemonModel {

 int get id; String get name; String get imageUrl; List<String> get types;
/// Create a copy of FavoritePokemonModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FavoritePokemonModelCopyWith<FavoritePokemonModel> get copyWith => _$FavoritePokemonModelCopyWithImpl<FavoritePokemonModel>(this as FavoritePokemonModel, _$identity);

  /// Serializes this FavoritePokemonModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FavoritePokemonModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&const DeepCollectionEquality().equals(other.types, types));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,imageUrl,const DeepCollectionEquality().hash(types));

@override
String toString() {
  return 'FavoritePokemonModel(id: $id, name: $name, imageUrl: $imageUrl, types: $types)';
}


}

/// @nodoc
abstract mixin class $FavoritePokemonModelCopyWith<$Res>  {
  factory $FavoritePokemonModelCopyWith(FavoritePokemonModel value, $Res Function(FavoritePokemonModel) _then) = _$FavoritePokemonModelCopyWithImpl;
@useResult
$Res call({
 int id, String name, String imageUrl, List<String> types
});




}
/// @nodoc
class _$FavoritePokemonModelCopyWithImpl<$Res>
    implements $FavoritePokemonModelCopyWith<$Res> {
  _$FavoritePokemonModelCopyWithImpl(this._self, this._then);

  final FavoritePokemonModel _self;
  final $Res Function(FavoritePokemonModel) _then;

/// Create a copy of FavoritePokemonModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? imageUrl = null,Object? types = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,types: null == types ? _self.types : types // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _FavoritePokemonModel implements FavoritePokemonModel {
  const _FavoritePokemonModel({required this.id, required this.name, required this.imageUrl, required final  List<String> types}): _types = types;
  factory _FavoritePokemonModel.fromJson(Map<String, dynamic> json) => _$FavoritePokemonModelFromJson(json);

@override final  int id;
@override final  String name;
@override final  String imageUrl;
 final  List<String> _types;
@override List<String> get types {
  if (_types is EqualUnmodifiableListView) return _types;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_types);
}


/// Create a copy of FavoritePokemonModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FavoritePokemonModelCopyWith<_FavoritePokemonModel> get copyWith => __$FavoritePokemonModelCopyWithImpl<_FavoritePokemonModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FavoritePokemonModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FavoritePokemonModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&const DeepCollectionEquality().equals(other._types, _types));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,imageUrl,const DeepCollectionEquality().hash(_types));

@override
String toString() {
  return 'FavoritePokemonModel(id: $id, name: $name, imageUrl: $imageUrl, types: $types)';
}


}

/// @nodoc
abstract mixin class _$FavoritePokemonModelCopyWith<$Res> implements $FavoritePokemonModelCopyWith<$Res> {
  factory _$FavoritePokemonModelCopyWith(_FavoritePokemonModel value, $Res Function(_FavoritePokemonModel) _then) = __$FavoritePokemonModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String imageUrl, List<String> types
});




}
/// @nodoc
class __$FavoritePokemonModelCopyWithImpl<$Res>
    implements _$FavoritePokemonModelCopyWith<$Res> {
  __$FavoritePokemonModelCopyWithImpl(this._self, this._then);

  final _FavoritePokemonModel _self;
  final $Res Function(_FavoritePokemonModel) _then;

/// Create a copy of FavoritePokemonModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? imageUrl = null,Object? types = null,}) {
  return _then(_FavoritePokemonModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,types: null == types ? _self._types : types // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
