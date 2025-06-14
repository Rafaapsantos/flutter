import 'package:dio/dio.dart';
import 'package:pokedex_app/data/models/pokemon_model.dart';
import 'package:retrofit/retrofit.dart';

part 'pokemon_data_source.g.dart';

@RestApi(baseUrl: 'https://pokeapi.co/api/v2/')
abstract class PokemonDataSource {
  factory PokemonDataSource(Dio dio, {String baseUrl}) = _PokemonDataSource;

  @GET('pokemon/{id}')
  Future<PokemonModel> getPokemonDetail(@Path('id') String id);
}
