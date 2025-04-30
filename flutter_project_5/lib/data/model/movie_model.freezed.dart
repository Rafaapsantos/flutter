// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MovieModel {

 String get Title; String get Year; String get Released; String get Runtime; String get Genre; String get Director; String get Writer; String get Actors; String get Plot; String get Language; String get Country; String get Poster;
/// Create a copy of MovieModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MovieModelCopyWith<MovieModel> get copyWith => _$MovieModelCopyWithImpl<MovieModel>(this as MovieModel, _$identity);

  /// Serializes this MovieModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MovieModel&&(identical(other.Title, Title) || other.Title == Title)&&(identical(other.Year, Year) || other.Year == Year)&&(identical(other.Released, Released) || other.Released == Released)&&(identical(other.Runtime, Runtime) || other.Runtime == Runtime)&&(identical(other.Genre, Genre) || other.Genre == Genre)&&(identical(other.Director, Director) || other.Director == Director)&&(identical(other.Writer, Writer) || other.Writer == Writer)&&(identical(other.Actors, Actors) || other.Actors == Actors)&&(identical(other.Plot, Plot) || other.Plot == Plot)&&(identical(other.Language, Language) || other.Language == Language)&&(identical(other.Country, Country) || other.Country == Country)&&(identical(other.Poster, Poster) || other.Poster == Poster));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,Title,Year,Released,Runtime,Genre,Director,Writer,Actors,Plot,Language,Country,Poster);

@override
String toString() {
  return 'MovieModel(Title: $Title, Year: $Year, Released: $Released, Runtime: $Runtime, Genre: $Genre, Director: $Director, Writer: $Writer, Actors: $Actors, Plot: $Plot, Language: $Language, Country: $Country, Poster: $Poster)';
}


}

/// @nodoc
abstract mixin class $MovieModelCopyWith<$Res>  {
  factory $MovieModelCopyWith(MovieModel value, $Res Function(MovieModel) _then) = _$MovieModelCopyWithImpl;
@useResult
$Res call({
 String Title, String Year, String Released, String Runtime, String Genre, String Director, String Writer, String Actors, String Plot, String Language, String Country, String Poster
});




}
/// @nodoc
class _$MovieModelCopyWithImpl<$Res>
    implements $MovieModelCopyWith<$Res> {
  _$MovieModelCopyWithImpl(this._self, this._then);

  final MovieModel _self;
  final $Res Function(MovieModel) _then;

/// Create a copy of MovieModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? Title = null,Object? Year = null,Object? Released = null,Object? Runtime = null,Object? Genre = null,Object? Director = null,Object? Writer = null,Object? Actors = null,Object? Plot = null,Object? Language = null,Object? Country = null,Object? Poster = null,}) {
  return _then(_self.copyWith(
Title: null == Title ? _self.Title : Title // ignore: cast_nullable_to_non_nullable
as String,Year: null == Year ? _self.Year : Year // ignore: cast_nullable_to_non_nullable
as String,Released: null == Released ? _self.Released : Released // ignore: cast_nullable_to_non_nullable
as String,Runtime: null == Runtime ? _self.Runtime : Runtime // ignore: cast_nullable_to_non_nullable
as String,Genre: null == Genre ? _self.Genre : Genre // ignore: cast_nullable_to_non_nullable
as String,Director: null == Director ? _self.Director : Director // ignore: cast_nullable_to_non_nullable
as String,Writer: null == Writer ? _self.Writer : Writer // ignore: cast_nullable_to_non_nullable
as String,Actors: null == Actors ? _self.Actors : Actors // ignore: cast_nullable_to_non_nullable
as String,Plot: null == Plot ? _self.Plot : Plot // ignore: cast_nullable_to_non_nullable
as String,Language: null == Language ? _self.Language : Language // ignore: cast_nullable_to_non_nullable
as String,Country: null == Country ? _self.Country : Country // ignore: cast_nullable_to_non_nullable
as String,Poster: null == Poster ? _self.Poster : Poster // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _MovieModel implements MovieModel {
  const _MovieModel({required this.Title, required this.Year, required this.Released, required this.Runtime, required this.Genre, required this.Director, required this.Writer, required this.Actors, required this.Plot, required this.Language, required this.Country, required this.Poster});
  factory _MovieModel.fromJson(Map<String, dynamic> json) => _$MovieModelFromJson(json);

@override final  String Title;
@override final  String Year;
@override final  String Released;
@override final  String Runtime;
@override final  String Genre;
@override final  String Director;
@override final  String Writer;
@override final  String Actors;
@override final  String Plot;
@override final  String Language;
@override final  String Country;
@override final  String Poster;

/// Create a copy of MovieModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MovieModelCopyWith<_MovieModel> get copyWith => __$MovieModelCopyWithImpl<_MovieModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MovieModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MovieModel&&(identical(other.Title, Title) || other.Title == Title)&&(identical(other.Year, Year) || other.Year == Year)&&(identical(other.Released, Released) || other.Released == Released)&&(identical(other.Runtime, Runtime) || other.Runtime == Runtime)&&(identical(other.Genre, Genre) || other.Genre == Genre)&&(identical(other.Director, Director) || other.Director == Director)&&(identical(other.Writer, Writer) || other.Writer == Writer)&&(identical(other.Actors, Actors) || other.Actors == Actors)&&(identical(other.Plot, Plot) || other.Plot == Plot)&&(identical(other.Language, Language) || other.Language == Language)&&(identical(other.Country, Country) || other.Country == Country)&&(identical(other.Poster, Poster) || other.Poster == Poster));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,Title,Year,Released,Runtime,Genre,Director,Writer,Actors,Plot,Language,Country,Poster);

@override
String toString() {
  return 'MovieModel(Title: $Title, Year: $Year, Released: $Released, Runtime: $Runtime, Genre: $Genre, Director: $Director, Writer: $Writer, Actors: $Actors, Plot: $Plot, Language: $Language, Country: $Country, Poster: $Poster)';
}


}

/// @nodoc
abstract mixin class _$MovieModelCopyWith<$Res> implements $MovieModelCopyWith<$Res> {
  factory _$MovieModelCopyWith(_MovieModel value, $Res Function(_MovieModel) _then) = __$MovieModelCopyWithImpl;
@override @useResult
$Res call({
 String Title, String Year, String Released, String Runtime, String Genre, String Director, String Writer, String Actors, String Plot, String Language, String Country, String Poster
});




}
/// @nodoc
class __$MovieModelCopyWithImpl<$Res>
    implements _$MovieModelCopyWith<$Res> {
  __$MovieModelCopyWithImpl(this._self, this._then);

  final _MovieModel _self;
  final $Res Function(_MovieModel) _then;

/// Create a copy of MovieModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? Title = null,Object? Year = null,Object? Released = null,Object? Runtime = null,Object? Genre = null,Object? Director = null,Object? Writer = null,Object? Actors = null,Object? Plot = null,Object? Language = null,Object? Country = null,Object? Poster = null,}) {
  return _then(_MovieModel(
Title: null == Title ? _self.Title : Title // ignore: cast_nullable_to_non_nullable
as String,Year: null == Year ? _self.Year : Year // ignore: cast_nullable_to_non_nullable
as String,Released: null == Released ? _self.Released : Released // ignore: cast_nullable_to_non_nullable
as String,Runtime: null == Runtime ? _self.Runtime : Runtime // ignore: cast_nullable_to_non_nullable
as String,Genre: null == Genre ? _self.Genre : Genre // ignore: cast_nullable_to_non_nullable
as String,Director: null == Director ? _self.Director : Director // ignore: cast_nullable_to_non_nullable
as String,Writer: null == Writer ? _self.Writer : Writer // ignore: cast_nullable_to_non_nullable
as String,Actors: null == Actors ? _self.Actors : Actors // ignore: cast_nullable_to_non_nullable
as String,Plot: null == Plot ? _self.Plot : Plot // ignore: cast_nullable_to_non_nullable
as String,Language: null == Language ? _self.Language : Language // ignore: cast_nullable_to_non_nullable
as String,Country: null == Country ? _self.Country : Country // ignore: cast_nullable_to_non_nullable
as String,Poster: null == Poster ? _self.Poster : Poster // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
