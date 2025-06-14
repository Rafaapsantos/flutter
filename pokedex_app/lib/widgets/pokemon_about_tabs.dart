import 'package:flutter/material.dart';
import 'package:pokedex_app/core/themes/app_size.dart';
import 'package:pokedex_app/widgets/info_about_pokemon_tab.dart';

class PokemonAboutTabs extends StatelessWidget {
  final String species;
  final int height;
  final int weight;
  final String gender;
  final String eggGroups;

  const PokemonAboutTabs({
    super.key,
    required this.species,
    required this.height,
    required this.weight,
    required this.gender,
    required this.eggGroups,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppSizes.size16),
      child: Column(
        children: [
          InfoAboutPokemonTab(label: 'Species', value: species),
          InfoAboutPokemonTab(label: 'Height', value: height),
          InfoAboutPokemonTab(label: 'Weight', value: weight),
          SizedBox(height: AppSizes.size16),
          InfoAboutPokemonTab(label: 'Gender', value: gender),
          InfoAboutPokemonTab(label: 'Egg Groups', value: eggGroups),
        ],
      ),
    );
  }
}
