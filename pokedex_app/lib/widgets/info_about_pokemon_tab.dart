import 'package:flutter/material.dart';
import 'package:pokedex_app/core/themes/app_size.dart';

enum ValueDisplayType { text, progress }

class InfoAboutPokemonTab extends StatelessWidget {
  final String label;
  final dynamic value;
  final ValueDisplayType displayType;
  final Color? progressColor;

  const InfoAboutPokemonTab({
    super.key,
    required this.label,
    required this.value,
    this.displayType = ValueDisplayType.text,
    this.progressColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: AppSizes.size12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: AppSizes.size16,
              fontWeight: FontWeight.w500,
              color: Colors.grey[700],
            ),
          ),
          if (displayType == ValueDisplayType.text)
            Text(
              value.toString(),
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: AppSizes.size16,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            )
          else
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Text(
                    value.toString(),
                    style: TextStyle(
                      fontSize: AppSizes.size16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(
                  width: 100,
                  child: LinearProgressIndicator(
                    value:
                        (value is num)
                            ? (value.toDouble() / 100).clamp(0.0, 1.0)
                            : 0.0,
                    backgroundColor: Colors.grey[300],
                    color: progressColor ?? Colors.blue,
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
