import 'package:pokedex_app/data/datasources/pokemon_data_source.dart';
import 'package:pokedex_app/data/models/pokemon_model.dart';

class PokemonRepository {
  PokemonRepository({required this.dataSource});

  final PokemonDataSource dataSource;

  Future<List<PokemonModel>> getPokemonCards() async {
    final List<PokemonModel> pokemons = [];
    for (var i = 1; i <= 200; i++) {
      final response = await dataSource.getPokemonDetail(i.toString());
      pokemons.add(response);
    }
    return pokemons;
  }
}
