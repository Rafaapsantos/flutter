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
  final Object value;
  final ValueDisplayType displayType;
  final Color? progressColor;

  //Formata o valor para String, independente se for int, double ou String.
  String get displayValue {
    if (value is String) {
      return value as String;
    } else if (value is double) {
      return (value as double).toStringAsFixed(1);
    } else if (value is int) {
      return value.toString();
    } else {
      return '-';
    }
  }

  //Converte o valor para double e limita de 0 a 100.
  double get progressValue {
    if (value is double) {
      return (value as double).clamp(0, 100).toDouble();
    } else if (value is int) {
      return (value as int).toDouble().clamp(0, 100);
    } else {
      return 0.0;
    }
  }

  @override
  Widget build(BuildContext context) => Padding(
    padding: EdgeInsets.only(bottom: AppSizes.small),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: AppSizes.medium,
            fontWeight: FontWeight.w500,
            color: AppColors.grey700,
          ),
        ),
        switch (displayType) {
          ValueDisplayType.value => Text(
            displayValue,
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
                padding: const EdgeInsets.only(right: AppSizes.small),
                child: Text(
                  displayValue,
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
                  value: (progressValue / 100),
                  backgroundColor: AppColors.grey300,
                  color: progressColor,
                ),
              ),
            ],
          ),
        },
      ],
    ),
  );
}
