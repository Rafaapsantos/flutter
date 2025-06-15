import 'package:flutter/material.dart';
import 'package:pokedex_app/core/themes/app_colors.dart';
import 'package:pokedex_app/core/themes/app_size.dart';
import 'package:pokedex_app/widgets/pokemon_characteristics.dart';

class PokemonInfos extends StatelessWidget {
  final Color typeColor;
  final String height;
  final String weight;
  final int hp;
  final int attack;
  final int defense;
  final int specialAttack;
  final int specialDefense;
  final int speed;

  const PokemonInfos({
    super.key,
    required this.typeColor,
    required this.height,
    required this.weight,
    required this.hp,
    required this.attack,
    required this.defense,
    required this.specialAttack,
    required this.specialDefense,
    required this.speed,
  });

  @override
  Widget build(BuildContext context) => Expanded(
    child: Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: AppSizes.medium,
        vertical: AppSizes.small,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(AppSizes.large),
          topRight: Radius.circular(AppSizes.large),
        ),
      ),
      constraints: BoxConstraints(
        minHeight: MediaQuery.of(context).size.height * 0.7,
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'About',
              style: TextStyle(
                fontSize: AppSizes.large,
                fontWeight: FontWeight.bold,
                color: AppColors.black,
              ),
            ),
            SizedBox(height: AppSizes.medium),
            PokemonCharacteristics(label: 'Height', value: 1),
            PokemonCharacteristics(label: 'Weight', value: 0),
            PokemonCharacteristics(
              label: 'HP',
              value: hp,
              displayType: ValueDisplayType.progress,
              progressColor: typeColor,
            ),
            PokemonCharacteristics(
              label: 'Attack',
              value: attack,
              displayType: ValueDisplayType.progress,
              progressColor: typeColor,
            ),
            PokemonCharacteristics(
              label: 'Defense',
              value: defense,
              displayType: ValueDisplayType.progress,
              progressColor: typeColor,
            ),
            PokemonCharacteristics(
              label: 'Special-Attack',
              value: specialAttack,
              displayType: ValueDisplayType.progress,
              progressColor: typeColor,
            ),
            PokemonCharacteristics(
              label: 'Special-Defense',
              value: specialDefense,
              displayType: ValueDisplayType.progress,
              progressColor: typeColor,
            ),
            PokemonCharacteristics(
              label: 'Speed',
              value: speed,
              displayType: ValueDisplayType.progress,
              progressColor: typeColor,
            ),
          ],
        ),
      ),
    ),
  );
}
