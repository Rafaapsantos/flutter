import 'package:flutter/material.dart';
import 'package:pokedex_app/core/themes/app_colors.dart';
import 'package:pokedex_app/core/themes/app_size.dart';
import 'package:pokedex_app/screens/pokemon_detail.dart';
import 'package:pokedex_app/widgets/pokemon_type_chip.dart';

enum PokemonType {
  normal,
  fire,
  water,
  grass,
  electric,
  ice,
  fighting,
  poison,
  ground,
  flying,
  psychic,
  bug,
  rock,
  ghost,
  dragon,
  steel,
  fairy,
  dark,
  stellar,
  unknown,
}

class PokemonCard extends StatelessWidget {
  final String name;
  final int id;
  final String urlImage;
  final String type1;
  final String type2;

  const PokemonCard({
    super.key,
    required this.name,
    required this.id,
    required this.urlImage,
    required this.type1,
    required this.type2,
  });

  Color _getTypeColor(String type) {
    final pokemonType = PokemonType.values.firstWhere(
      (e) => e.name == type.toLowerCase(),
      orElse: () => PokemonType.unknown,
    );

    return switch (pokemonType) {
      PokemonType.normal => AppColors.normal.withAlpha(220),
      PokemonType.fire => AppColors.fire.withAlpha(220),
      PokemonType.water => AppColors.water.withAlpha(220),
      PokemonType.grass => AppColors.grass.withAlpha(220),
      PokemonType.electric => AppColors.electric.withAlpha(220),
      PokemonType.ice => AppColors.ice.withAlpha(220),
      PokemonType.fighting => AppColors.fighting.withAlpha(220),
      PokemonType.poison => AppColors.poison.withAlpha(220),
      PokemonType.ground => AppColors.ground.withAlpha(220),
      PokemonType.flying => AppColors.flying.withAlpha(220),
      PokemonType.psychic => AppColors.psychic.withAlpha(220),
      PokemonType.bug => AppColors.bug.withAlpha(220),
      PokemonType.rock => AppColors.rock.withAlpha(220),
      PokemonType.ghost => AppColors.ghost.withAlpha(220),
      PokemonType.dragon => AppColors.dragon.withAlpha(220),
      PokemonType.steel => AppColors.steel.withAlpha(220),
      PokemonType.fairy => AppColors.fairy.withAlpha(220),
      PokemonType.dark => AppColors.dark.withAlpha(220),
      PokemonType.stellar => AppColors.stellar.withAlpha(220),
      PokemonType.unknown => AppColors.unknown.withAlpha(220),
    };
  }

  @override
  Widget build(BuildContext context) {
    final typeColor = _getTypeColor(type1);
    return Card(
      color: _getTypeColor(type1),
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        splashColor: Colors.grey,
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return PokemonDetail(
                  typeColor: typeColor,
                  id: id,
                  name: name,
                  urlImage: urlImage,
                  type1: type1,
                  type2: type2,
                );
              },
            ),
          );
        },
        child: SizedBox(
          width: 150,
          height: 150,
          child: Padding(
            padding: EdgeInsets.all(AppSizes.size8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      '#$id',
                      style: TextStyle(
                        fontSize: AppSizes.size20,
                        fontWeight: FontWeight.w600,
                        color: AppColors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: AppSizes.size4),
                Text(
                  name,
                  style: TextStyle(
                    fontSize: AppSizes.size24,
                    fontWeight: FontWeight.w600,
                    color: AppColors.white,
                  ),
                ),
                SizedBox(height: AppSizes.size4),
                Expanded(
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          PokemonTypeChip(types: type1),
                          if (type2.isNotEmpty)
                            SizedBox(height: AppSizes.size4),
                          if (type2.isNotEmpty) PokemonTypeChip(types: type2),
                        ],
                      ),
                      Expanded(
                        child: Image.network(urlImage, fit: BoxFit.cover),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
