import 'package:flutter/material.dart';
import 'package:pokedex_app/core/themes/app_colors.dart';
import 'package:pokedex_app/core/themes/app_size.dart';

enum ValueDisplayType { value, progress }

class PokemonCharacteristics extends StatelessWidget {
  const PokemonCharacteristics({
    super.key,
    required this.label,
    required this.value,
    this.displayType = ValueDisplayType.value,
    this.progressColor,
  });

  final String label;
  final int value;
  final ValueDisplayType displayType;
  final Color? progressColor;

  @override
  Widget build(BuildContext context) => Padding(
    padding: EdgeInsets.only(bottom: AppSizes.small),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(
            //TODO() cria outra classe com tamanho de fonte
            fontSize: AppSizes.medium,
            fontWeight: FontWeight.w500,
            //TODO() revisar colors q não estou utilizando no arquivo colors
            color: Colors.grey[700],
          ),
        ),
        switch (displayType) {
          ValueDisplayType.value => Text(
            value.toString(),
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: AppSizes.medium,
              fontWeight: FontWeight.w600,
              color: AppColors.black,
            ),
          ),
          ValueDisplayType.progress => Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Text(
                  value.toString(),
                  style: TextStyle(
                    fontSize: AppSizes.medium,
                    fontWeight: FontWeight.w600,
                    color: AppColors.black,
                  ),
                ),
              ),
              SizedBox(
                width: 100,
                child: LinearProgressIndicator(
                  value: (value.toDouble() / 100).clamp(0.0, 1.0),
                  backgroundColor: Colors.grey[300],
                  color: progressColor ?? Colors.blue,
                ),
              ),
            ],
          ),
        },
      ],
    ),
  );
}
