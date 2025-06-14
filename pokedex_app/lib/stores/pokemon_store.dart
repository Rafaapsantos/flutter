import 'package:flutter/material.dart';
import 'package:pokedex_app/core/errors/pokemon_exception.dart';
import 'package:pokedex_app/data/models/pokemon_model.dart';
import 'package:pokedex_app/domain/repositories/pokemon_repository.dart';

class PokemonStore extends ChangeNotifier {
  final PokemonRepository _repository;

  PokemonStore({required PokemonRepository repository})
    : _repository = repository;

  bool _isLoading = false;
  String? _errorMessage;
  bool _success = false;
  List<PokemonModel> _pokemons = [];

  bool get isLoading => _isLoading;
  String? get errorMessage => _errorMessage;
  bool get success => _success;
  List<PokemonModel> get pokemons => _pokemons;

  Future<void> getPokemonCards() async {
    _setLoading(true);

    try {
      _pokemons = await _repository.getPokemonCards();
      _success = true;
      _errorMessage = null;
    } on PokemonException catch (e) {
      print(e);
      _errorMessage = e.message;
      _success = false;
    } catch (_) {
      _errorMessage = 'Erro desconhecido ao buscar pokemons.';
      _success = false;
    } finally {
      _setLoading(false);
    }
  }

  void _setLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }
}
