import 'package:flutter/material.dart';
import 'package:pokedex_app/core/themes/app_colors.dart';
import 'package:pokedex_app/core/themes/app_size.dart';
import 'package:pokedex_app/widgets/info_about_pokemon_tab.dart';

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
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: AppSizes.size16,
          vertical: AppSizes.size12,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(AppSizes.size28),
            topRight: Radius.circular(AppSizes.size28),
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
                  fontSize: AppSizes.size20,
                  fontWeight: FontWeight.bold,
                  color: AppColors.black,
                ),
              ),
              SizedBox(height: AppSizes.size16),
              InfoAboutPokemonTab(label: 'Height', value: '$height m'),
              InfoAboutPokemonTab(label: 'Weight', value: '$weight kg'),
              InfoAboutPokemonTab(
                label: 'HP',
                value: hp,
                displayType: ValueDisplayType.progress,
                progressColor: typeColor,
              ),
              InfoAboutPokemonTab(
                label: 'Attack',
                value: attack,
                displayType: ValueDisplayType.progress,
                progressColor: typeColor,
              ),
              InfoAboutPokemonTab(
                label: 'Defense',
                value: defense,
                displayType: ValueDisplayType.progress,
                progressColor: typeColor,
              ),
              InfoAboutPokemonTab(
                label: 'Special-Attack',
                value: specialAttack,
                displayType: ValueDisplayType.progress,
                progressColor: typeColor,
              ),
              InfoAboutPokemonTab(
                label: 'Special-Defense',
                value: specialDefense,
                displayType: ValueDisplayType.progress,
                progressColor: typeColor,
              ),
              InfoAboutPokemonTab(
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
}
