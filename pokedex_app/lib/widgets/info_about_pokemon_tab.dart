import 'package:flutter/material.dart';
import 'package:pokedex_app/core/themes/app_size.dart';

class InfoAboutPokemonTab extends StatelessWidget {
  final String label;
  final dynamic value;

  const InfoAboutPokemonTab({
    super.key,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: AppSizes.size12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: AppSizes.size16,
              fontWeight: FontWeight.w500,
              color: Colors.grey[700],
            ),
          ),
          Text(
            value,
            textAlign: TextAlign.end,
            style: TextStyle(
              fontSize: AppSizes.size16,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
