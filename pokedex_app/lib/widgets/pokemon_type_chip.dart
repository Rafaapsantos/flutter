import 'package:flutter/material.dart';
import 'package:pokedex_app/core/themes/app_size.dart';

class PokemonTypeChip extends StatelessWidget {
  const PokemonTypeChip({
    super.key,
    required this.types,
    this.textTypesize = AppSizes.small,
    this.horizontalSize = AppSizes.extraSmall,
  });

  final String types;
  final double? textTypesize;
  final double horizontalSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: horizontalSize,
        vertical: AppSizes.extraSmall,
      ),
      decoration: BoxDecoration(
        color: Colors.white.withAlpha((0.2 * 255).toInt()),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSizes.extraSmall,
            ),
            child: Text(
              types,
              style: TextStyle(
                color: Colors.white,
                fontSize: textTypesize,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
