import 'package:flutter/material.dart';
import 'package:pokedex_app/core/themes/app_size.dart';

class PokemonTypeChip extends StatelessWidget {
  final String types;
  final double? textTypesize;
  final double horizontalSize;

  const PokemonTypeChip({
    super.key,
    required this.types,
    this.textTypesize = AppSizes.size12,
    this.horizontalSize = AppSizes.size4,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: horizontalSize,
        vertical: AppSizes.size4,
      ),
      decoration: BoxDecoration(
        color: Colors.white.withAlpha((0.2 * 255).toInt()),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSizes.size4),
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
