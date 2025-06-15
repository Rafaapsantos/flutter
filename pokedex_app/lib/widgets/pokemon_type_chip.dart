import 'package:flutter/material.dart';
import 'package:pokedex_app/core/themes/app_size.dart';

class PokemonTypeChip extends StatelessWidget {
  const PokemonTypeChip({
    super.key,
    required this.type,
    this.textTypeSize = AppSizes.small,
    this.horizontalSize = AppSizes.extraSmall,
  });

  final String type;
  final double? textTypeSize;
  final double horizontalSize;

  @override
  Widget build(BuildContext context) => Container(
    padding: EdgeInsets.symmetric(
      horizontal: horizontalSize,
      vertical: AppSizes.extraSmall,
    ),
    margin: EdgeInsets.symmetric(horizontal: AppSizes.extraSmall),
    decoration: BoxDecoration(
      color: Colors.white.withAlpha((0.2 * 255).toInt()),
      borderRadius: BorderRadius.circular(20),
    ),
    child: Text(
      type,
      style: TextStyle(
        color: Colors.white,
        fontSize: textTypeSize,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
