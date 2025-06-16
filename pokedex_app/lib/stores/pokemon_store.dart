import 'package:flutter/material.dart';
import 'package:pokedex_app/core/errors/pokemon_exception.dart';
import 'package:pokedex_app/data/models/pokemon_model.dart';
import 'package:pokedex_app/domain/repositories/pokemon_repository.dart';

class PokemonStore extends ChangeNotifier {
  PokemonStore({required PokemonRepository repository})
    : _repository = repository;
  final PokemonRepository _repository;

  // Estados principais
  bool _isLoading = false;
  String? _errorMessage;
  List<PokemonModel> _pokemons = [];
  PokemonModel? _selectedPokemon;
  String _searchQuery = '';

  // Getters públicos
  bool get isLoading => _isLoading;
  String? get errorMessage => _errorMessage;
  List<PokemonModel> get pokemons => _pokemons;
  PokemonModel? get selectedPokemon => _selectedPokemon;
  String get searchQuery => _searchQuery;

  // Getter para filtrar os pokémons por nome
  List<PokemonModel> get filteredPokemons {
    if (_searchQuery.isEmpty) return _pokemons;
    return _pokemons
        .where(
          (pokemon) => pokemon.forms.first.name.toLowerCase().contains(
            _searchQuery.toLowerCase(),
          ),
        )
        .toList();
  }

  // Atualiza o texto de busca
  void setSearchQuery(String query) {
    _searchQuery = query;
    notifyListeners();
  }

  // Busca todos os pokemons
  Future<void> getPokemonCards() async {
    _setLoading(true);

    try {
      final result = await _repository.getPokemonCards();
      _pokemons = result;
      _errorMessage = null;
    } on PokemonException catch (e) {
      _errorMessage = e.message;
      _pokemons = [];
    } catch (e) {
      _errorMessage = 'Erro desconhecido ao buscar pokémons.';
      _pokemons = [];
    } finally {
      _setLoading(false);
    }
  }

  // Busca individual do pokemon
  Future<void> getPokemonById(int id) async {
    _setLoading(true);

    try {
      if (_pokemons.isNotEmpty) {
        _selectedPokemon = _pokemons.firstWhere(
          (p) => p.id == id,
          orElse: () => throw Exception('Não encontrado'),
        );
      } else {
        final result = await _repository.getPokemonCards();
        _pokemons = result;
        _selectedPokemon = _pokemons.firstWhere(
          (p) => p.id == id,
          orElse: () => throw Exception('Não encontrado'),
        );
      }
      _errorMessage = null;
    } on PokemonException catch (e) {
      _errorMessage = e.message;
      _selectedPokemon = null;
    } catch (e) {
      _errorMessage = 'Erro ao buscar o pokémon selecionado.';
      _selectedPokemon = null;
    } finally {
      _setLoading(false);
    }
  }

  void _setLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }
}
