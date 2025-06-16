import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:pokedex_app/core/themes/app_colors.dart';
import 'package:pokedex_app/core/themes/app_size.dart';
import 'package:pokedex_app/data/datasources/pokemon_data_source.dart';
import 'package:pokedex_app/data/models/pokemon_model.dart';
import 'package:pokedex_app/domain/repositories/pokemon_repository.dart';
import 'package:pokedex_app/stores/pokemon_store.dart';
import 'package:pokedex_app/widgets/pokemon_infos.dart';
import 'package:pokedex_app/widgets/pokemon_type_chip.dart';

class PokemonDetail extends StatefulWidget {
  const PokemonDetail({
    super.key,
    required this.name,
    required this.id,
    required this.urlImage,
    required this.types,
  });

  final String name;
  final int id;
  final String urlImage;
  final List<Types> types;

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
    _store.addListener(_onStoreUpdated); //Registra o listener
    _store.getPokemonById(
      widget.id,
    ); //Inicia o carregamento dos Pokémons chamando
  }

  @override
  void dispose() {
    _store.removeListener(
      _onStoreUpdated,
    ); //Remove o listener da store ao destruir a tela, evitando vazamento de memória.
    super.dispose();
  }

  //Sempre que o PokemonStore for atualizado, ele força o rebuild da tela.
  void _onStoreUpdated() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final firstType = widget.types.first.type.name;
    final secondType = widget.types.last.type.name;
    final typeColor = firstType.color;
    final pokemon = _store.selectedPokemon;

    return Scaffold(
      backgroundColor: typeColor,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: AppSizes.extraLarge,
              left: AppSizes.medium,
              right: AppSizes.medium,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back, color: AppColors.white),
                  onPressed: () => Navigator.pop(context),
                ),
                IconButton(
                  icon: Icon(
                    Icons.favorite_border,
                    color: AppColors.white,
                    size: AppSizes.extraLarge,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSizes.medium),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.name,
                      style: TextStyle(
                        fontSize: AppSizes.extraLarge,
                        fontWeight: FontWeight.w600,
                        color: AppColors.white,
                      ),
                    ),
                    SizedBox(height: AppSizes.extraSmall),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        PokemonTypeChip(
                          type: firstType.name,
                          textTypeSize: AppSizes.medium,
                          horizontalSize: AppSizes.smallMedium,
                        ),
                        if (widget.types.length > 1) ...[
                          SizedBox(width: AppSizes.extraSmall),
                          PokemonTypeChip(
                            type: secondType.name,
                            textTypeSize: AppSizes.medium,
                            horizontalSize: AppSizes.smallMedium,
                          ),
                        ],
                      ],
                    ),
                  ],
                ),
                Text(
                  '#${widget.id}',
                  style: TextStyle(
                    fontSize: AppSizes.large,
                    fontWeight: FontWeight.w600,
                    color: AppColors.white,
                  ),
                ),
              ],
            ),
          ),
          Center(child: Image.network(widget.urlImage)),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(AppSizes.extraLarge),
                  topRight: Radius.circular(AppSizes.extraLarge),
                ),
              ),

              child: Builder(
                //cria a árvore de widgets com um contexto próprio.
                builder: (context) {
                  if (_store.isLoading) {
                    return Center(
                      child: CircularProgressIndicator(color: typeColor),
                    );
                  }
                  if (_store.errorMessage != null) {
                    return Center(
                      child: Text(
                        _store.errorMessage!,
                        style: TextStyle(color: typeColor),
                      ),
                    );
                  }
                  if (pokemon == null) {
                    return Center(
                      child: Text(
                        'Dados não encontrados.',
                        style: TextStyle(color: typeColor),
                      ),
                    );
                  }
                  return PokemonInfos(
                    typeColor: typeColor,
                    height: pokemon.height.toString(),
                    weight: pokemon.weight.toString(),
                    hp: pokemon.stats.first.baseStat,
                    attack: pokemon.stats[1].baseStat,
                    defense: pokemon.stats[2].baseStat,
                    specialAttack: pokemon.stats[3].baseStat,
                    specialDefense: pokemon.stats[4].baseStat,
                    speed: pokemon.stats[5].baseStat,
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
