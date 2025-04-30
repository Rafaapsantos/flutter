import 'package:dio/dio.dart';
import 'package:flutter_project_5/data/model/movie_model.dart';
import 'package:retrofit/retrofit.dart';

part 'movie_data_source.g.dart';

@RestApi(baseUrl: "https://www.omdbapi.com/")
abstract class MovieDataSource {
  factory MovieDataSource(Dio dio) = _MovieDataSource;

  @GET("/")
  Future<MovieModel> getMovieByTitle(
    @Query("t") String Title, // Parâmetro dinâmico para o título do filme
    @Query("apikey") String apiKey, // Sua chave da API
  );
}
