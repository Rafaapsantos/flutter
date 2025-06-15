import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokedex_app/core/themes/app_colors.dart';
import 'package:pokedex_app/core/themes/app_size.dart';
import 'package:pokedex_app/data/datasources/pokemon_data_source.dart';
import 'package:pokedex_app/domain/repositories/pokemon_repository.dart';
import 'package:pokedex_app/stores/pokemon_store.dart';
import 'package:pokedex_app/widgets/pokemon_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PokemonStore _store = PokemonStore(
    repository: PokemonRepository(dataSource: PokemonDataSource(Dio())),
  );

  @override
  void initState() {
    super.initState();
    _store.addListener(_onStoreUpdated);
    _store.getPokemonCards();
  }

  @override
  void dispose() {
    _store.removeListener(_onStoreUpdated);
    super.dispose();
  }

  void _onStoreUpdated() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final filteredPokemons = _store.filteredPokemons;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(AppSizes.large),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Pokédex',
              style: GoogleFonts.bebasNeue(
                fontSize: AppSizes.extraLarge,
                fontWeight: FontWeight.bold,
                color: AppColors.black87,
              ),
            ),
            Text(
              'Procure um pokémon pelo nome na barra de pesquisa.',
              style: TextStyle(
                fontSize: AppSizes.large,
                color: const Color.fromARGB(255, 85, 85, 85),
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: AppSizes.small),
            TextField(
              decoration: InputDecoration(
                hintText: 'Pesquisar...',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(AppSizes.small),
                ),
              ),
              onChanged: _store.setSearchQuery,
            ),
            SizedBox(height: AppSizes.large),
            Expanded(
              child:
                  _store.isLoading
                      ? const Center(child: CircularProgressIndicator())
                      : _store.errorMessage != null
                      ? Center(child: Text(_store.errorMessage!))
                      : filteredPokemons.isEmpty
                      ? const Center(child: Text('Nenhum pokémon encontrado'))
                      : GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              childAspectRatio: 0.9,
                              mainAxisSpacing: AppSizes.small,
                              crossAxisSpacing: AppSizes.small,
                            ),
                        itemCount: filteredPokemons.length,
                        itemBuilder: (context, index) {
                          final pokemon = filteredPokemons[index];
                          return PokemonCard(
                            id: pokemon.id,
                            name: pokemon.forms.first.name,
                            urlImage:
                                pokemon.sprites.other.officialArtwork.image,
                            types: pokemon.types,
                          );
                        },
                      ),
            ),
          ],
        ),
      ),
    );
  }
}
