import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:pokedex_app/core/themes/app_colors.dart';
import 'package:pokedex_app/core/themes/app_size.dart';
import 'package:pokedex_app/data/datasources/pokemon_data_source.dart';
import 'package:pokedex_app/domain/repositories/pokemon_repository.dart';
import 'package:pokedex_app/stores/pokemon_store.dart';
import 'package:pokedex_app/widgets/pokemon_infos.dart';
import 'package:pokedex_app/widgets/pokemon_type_chip.dart';

class PokemonDetail extends StatefulWidget {
  final Color typeColor;
  final String name;
  final int id;
  final String urlImage;
  final String type1;
  final String type2;
  const PokemonDetail({
    super.key,
    required this.typeColor,
    required this.name,
    required this.id,
    required this.urlImage,
    required this.type1,
    required this.type2,
  });

  @override
  State<PokemonDetail> createState() => _PokemonDetailState();
}

class _PokemonDetailState extends State<PokemonDetail> {
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
    return Scaffold(
      backgroundColor: widget.typeColor,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: AppSizes.size36,
              left: AppSizes.size16,
              right: AppSizes.size16,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () => Navigator.pop(context),
                ),
                IconButton(
                  icon: Icon(
                    Icons.favorite_border,
                    color: Colors.white,
                    size: AppSizes.size28,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: AppSizes.size16,
              right: AppSizes.size16,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.name,
                      style: TextStyle(
                        fontSize: AppSizes.size36,
                        fontWeight: FontWeight.w600,
                        color: AppColors.white,
                      ),
                    ),
                    SizedBox(height: AppSizes.size4),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        PokemonTypeChip(
                          types: widget.type1,
                          textTypesize: AppSizes.size16,
                          horizontalSize: AppSizes.size8,
                        ),
                        if (widget.type2.isNotEmpty)
                          SizedBox(width: AppSizes.size8),
                        if (widget.type2.isNotEmpty)
                          PokemonTypeChip(
                            types: widget.type2,
                            textTypesize: AppSizes.size16,
                            horizontalSize: AppSizes.size8,
                          ),
                      ],
                    ),
                  ],
                ),
                Text(
                  '#${widget.id}',
                  style: TextStyle(
                    fontSize: AppSizes.size24,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Center(child: Image.network(widget.urlImage)),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(AppSizes.size32),
                  topRight: Radius.circular(AppSizes.size32),
                ),
              ),
              child: Builder(
                builder: (context) {
                  if (_store.isLoading) {
                    return Center(
                      child: CircularProgressIndicator(color: widget.typeColor),
                    );
                  }
                  if (_store.errorMessage != null) {
                    return Center(
                      child: Text(
                        _store.errorMessage!,
                        style: TextStyle(color: widget.typeColor),
                      ),
                    );
                  }
                  final pokemon =
                      _store.pokemons.where((p) => p.id == widget.id).isNotEmpty
                          ? _store.pokemons.firstWhere((p) => p.id == widget.id)
                          : null;
                  if (pokemon == null) {
                    return Center(
                      child: Text(
                        'Dados não encontrados.',
                        style: TextStyle(color: widget.typeColor),
                      ),
                    );
                  }
                  return PokemonInfos(
                    typeColor: widget.typeColor,
                    height: pokemon.height.toString(),
                    weight: pokemon.weight.toString(),
                    hp: pokemon.stats.first.baseStat,
                    attack: pokemon.stats[1].baseStat,
                    speed: pokemon.stats[2].baseStat,
                    specialAttack: pokemon.stats[3].baseStat,
                    defense: pokemon.stats[4].baseStat,
                    specialDefense: pokemon.stats[5].baseStat,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
