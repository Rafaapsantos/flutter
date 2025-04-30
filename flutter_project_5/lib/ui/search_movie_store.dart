import 'package:flutter/material.dart';
import 'package:flutter_project_5/data/model/movie_model.dart';
import 'package:flutter_project_5/repository/errors/movie_exception.dart';
import 'package:flutter_project_5/repository/movie_repository.dart';

class SearchMovieStore extends ChangeNotifier {
  SearchMovieStore({required GetMovieByTitleRepository repository})
    : _repository = repository;

  final GetMovieByTitleRepository _repository;

  bool _isLoading = false;
  String? _errorMessage;
  bool _success = false;
  MovieModel? _movie;

  bool get isLoading => _isLoading;
  String? get errorMessage => _errorMessage;
  bool get success => _success;
  MovieModel? get movie => _movie;

  Future<void> getMovie(String title, String apiKey) async {
    _isLoading = true;
    _errorMessage = null;
    _success = false;
    _movie = null;
    notifyListeners();

    try {
      final result = await _repository.getMovie(title, apiKey);
      _movie = result;
      _success = true;
    } on MovieException catch (e) {
      _errorMessage = e.message;
    } catch (e) {
      _errorMessage = 'Erro desconhecido ao buscar filme.';
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
