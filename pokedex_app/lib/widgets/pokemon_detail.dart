import 'package:flutter/material.dart';
import 'package:pokedex_app/core/themes/app_colors.dart';
import 'package:pokedex_app/core/themes/app_size.dart';
import 'package:pokedex_app/widgets/info_about_pokemon_tab.dart';
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
                        PokemonTypeChip(types: type1),
                        if (type2.isNotEmpty) SizedBox(width: AppSizes.size8),
                        if (type2.isNotEmpty) PokemonTypeChip(types: type2),
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
          Expanded(
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
                    InfoAboutPokemonTab(label: 'Species', value: 'Seed'),
                    InfoAboutPokemonTab(
                      label: 'Height',
                      value: '2\'3.6" (0.70 m)',
                    ),
                    InfoAboutPokemonTab(
                      label: 'Weight',
                      value: '15.2 lbs (6.9 kg)',
                    ),
                    InfoAboutPokemonTab(
                      label: 'Abilities',
                      value: 'Overgrow, Chlorophyll',
                    ),
                    InfoAboutPokemonTab(label: 'Species', value: 'Seed'),
                    InfoAboutPokemonTab(
                      label: 'Height',
                      value: '2\'3.6" (0.70 m)',
                    ),
                    InfoAboutPokemonTab(
                      label: 'Weight',
                      value: '15.2 lbs (6.9 kg)',
                    ),
                    InfoAboutPokemonTab(
                      label: 'Abilities',
                      value: 'Overgrow, Chlorophyll',
                    ),
                    // Adicione mais conteúdo aqui se necessário
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
