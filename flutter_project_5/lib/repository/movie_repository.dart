import 'package:flutter_project_5/data/datasource/movie_data_source.dart';
import 'package:flutter_project_5/data/model/movie_model.dart';
import 'package:flutter_project_5/repository/errors/movie_exception.dart';

final class GetMovieByTitleRepository {
  GetMovieByTitleRepository({required MovieDataSource movieDataSource})
    : _movieDataSource = movieDataSource;

  final MovieDataSource _movieDataSource;

  Future<MovieModel> getMovie(String title, String apiKey) async {
    try {
      final movie = await _movieDataSource.getMovieByTitle(title, apiKey);
      return movie;
    } catch (error, stackTrace) {
      print('Erro ao buscar filme: $error');
      throw MovieException('Erro ao buscar filme', error, stackTrace);
    }
  }
}
