import 'package:flutter/material.dart';
import 'package:pokedex_app/core/themes/app_colors.dart';
import 'package:pokedex_app/core/themes/app_size.dart';
import 'package:pokedex_app/data/models/pokemon_model.dart';
import 'package:pokedex_app/screens/pokemon_detail.dart';
import 'package:pokedex_app/widgets/pokemon_type_chip.dart';

class PokemonCard extends StatelessWidget {
  const PokemonCard({
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
  Widget build(BuildContext context) {
    final firstType =
        types.isNotEmpty ? types.first.type.name : PokemonType.unknown;
    final secondType = types.length > 1 ? types[1].type.name : null;
    final typeColor = firstType.color;

    return Card(
      color: typeColor,
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        splashColor: Colors.grey,
        onTap: () async {
          await Navigator.push(
            context,
            MaterialPageRoute(
              builder:
                  (context) => PokemonDetail(
                    id: id,
                    name: name,
                    urlImage: urlImage,
                    types: types,
                  ),
            ),
          );
        },
        child: SizedBox(
          width: 150,
          height: 150,
          child: Padding(
            padding: EdgeInsets.all(AppSizes.small),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      '#$id',
                      style: TextStyle(
                        fontSize: AppSizes.large,
                        fontWeight: FontWeight.w600,
                        color: AppColors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: AppSizes.extraSmall),
                Text(
                  name,
                  style: TextStyle(
                    fontSize: AppSizes.large,
                    fontWeight: FontWeight.w600,
                    color: AppColors.white,
                  ),
                ),
                SizedBox(height: AppSizes.extraSmall),
                Expanded(
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          PokemonTypeChip(type: firstType.name),
                          if (secondType != null) ...[
                            SizedBox(height: AppSizes.extraSmall),
                            PokemonTypeChip(type: secondType.name),
                          ],
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
