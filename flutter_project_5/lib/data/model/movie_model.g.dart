// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MovieModel _$MovieModelFromJson(Map<String, dynamic> json) => _MovieModel(
  Title: json['Title'] as String,
  Year: json['Year'] as String,
  Released: json['Released'] as String,
  Runtime: json['Runtime'] as String,
  Genre: json['Genre'] as String,
  Director: json['Director'] as String,
  Writer: json['Writer'] as String,
  Actors: json['Actors'] as String,
  Plot: json['Plot'] as String,
  Language: json['Language'] as String,
  Country: json['Country'] as String,
  Poster: json['Poster'] as String,
);

Map<String, dynamic> _$MovieModelToJson(_MovieModel instance) =>
    <String, dynamic>{
      'Title': instance.Title,
      'Year': instance.Year,
      'Released': instance.Released,
      'Runtime': instance.Runtime,
      'Genre': instance.Genre,
      'Director': instance.Director,
      'Writer': instance.Writer,
      'Actors': instance.Actors,
      'Plot': instance.Plot,
      'Language': instance.Language,
      'Country': instance.Country,
      'Poster': instance.Poster,
    };
