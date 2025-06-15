import 'package:flutter/material.dart';
import 'package:pokedex_app/core/themes/app_colors.dart';
import 'package:pokedex_app/core/themes/app_size.dart';
import 'package:pokedex_app/widgets/pokemon_infos.dart';
import 'package:pokedex_app/widgets/pokemon_type_chip.dart';

class PokemonDetail extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: typeColor,
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
                      name,
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
                          types: type1,
                          textTypesize: AppSizes.size16,
                          horizontalSize: AppSizes.size8,
                        ),
                        if (type2.isNotEmpty) SizedBox(width: AppSizes.size8),
                        if (type2.isNotEmpty)
                          PokemonTypeChip(
                            types: type2,
                            textTypesize: AppSizes.size16,
                            horizontalSize: AppSizes.size8,
                          ),
                      ],
                    ),
                  ],
                ),
                Text(
                  '#$id',
                  style: TextStyle(
                    fontSize: AppSizes.size24,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Center(child: Image.network(urlImage)),
          PokemonInfos(
            typeColor: typeColor,
            height: '2\'3.6" (0.70 m)',
            weight: '15.2 lbs (6.9 kg)',
            hp: 10,
            attack: 10,
            defense: 10,
            specialAttack: 10,
            specialDefense: 10,
            speed: 30,
          ),
        ],
      ),
    );
  }
}
