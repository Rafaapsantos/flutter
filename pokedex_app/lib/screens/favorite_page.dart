import 'package:flutter/material.dart';
import 'package:pokedex_app/data/database/favorite_database.dart';
import 'package:pokedex_app/data/models/favorite_pokemon_model.dart';
import 'package:pokedex_app/data/models/pokemon_model.dart';
import 'package:pokedex_app/widgets/pokemon_card.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  List<FavoritePokemonModel> favorites = [];

  @override
  void initState() {
    super.initState();
    loadFavorites();
  }

  Future<void> loadFavorites() async {
    final favs = await FavoriteDatabase.getFavorites();
    setState(() => favorites = favs);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Meus Favoritos')),
    body:
        favorites.isEmpty
            ? const Center(child: Text('Nenhum Pokémon favoritado'))
            : GridView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: favorites.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.9,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
              ),
              itemBuilder: (context, index) {
                final pokemon = favorites[index];

                final types =
                    pokemon.types.map((typeName) {
                      try {
                        final enumValue = PokemonType.values.firstWhere(
                          (e) => e.name.toLowerCase() == typeName.toLowerCase(),
                          orElse: () => PokemonType.unknown,
                        );
                        return Types(
                          slot: 1,
                          type: Type(name: enumValue, url: ''),
                        );
                      } catch (e) {
                        return Types(
                          slot: 1,
                          type: Type(name: PokemonType.unknown, url: ''),
                        );
                      }
                    }).toList();

                return PokemonCard(
                  id: pokemon.id,
                  name: pokemon.name,
                  urlImage: pokemon.imageUrl,
                  types: types,
                );
              },
            ),
  );
}
