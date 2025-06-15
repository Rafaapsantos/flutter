import 'package:flutter/material.dart';
import 'package:pokedex_app/core/themes/app_colors.dart';
import 'package:pokedex_app/core/themes/app_size.dart';
import 'package:pokedex_app/widgets/pokemon_characteristics.dart';

class PokemonInfos extends StatelessWidget {
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

  final Color typeColor;
  final String height;
  final String weight;
  final int hp;
  final int attack;
  final int defense;
  final int specialAttack;
  final int specialDefense;
  final int speed;

  @override
  Widget build(BuildContext context) {
    final characteristics = [
      {'label': 'HP', 'value': hp},
      {'label': 'Attack', 'value': attack},
      {'label': 'Defense', 'value': defense},
      {'label': 'Special-Attack', 'value': specialAttack},
      {'label': 'Special-Defense', 'value': specialDefense},
      {'label': 'Speed', 'value': speed},
    ];

    return Container(
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
            //TODO() formatar tamanho e peso
            PokemonCharacteristics(label: 'Height', value: height),
            PokemonCharacteristics(label: 'Weight', value: weight),
            ...characteristics.map(
              (characteristic) => PokemonCharacteristics(
                label: characteristic['label']! as String,
                value: characteristic['value']!,
                displayType: ValueDisplayType.progress,
                progressColor: typeColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
