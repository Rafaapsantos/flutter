import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokedex_app/core/themes/app_colors.dart';

final ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  scaffoldBackgroundColor: AppColors.white,
  appBarTheme: const AppBarTheme(
    backgroundColor: AppColors.white,
    foregroundColor: AppColors.white,
  ),
  textTheme: GoogleFonts.spaceGroteskTextTheme(),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: AppColors.grey,
      foregroundColor: AppColors.white,
      textStyle:
          GoogleFonts.spaceGroteskTextTheme().labelSmall ??
          const TextStyle(fontSize: 12),
    ),
  ),
  inputDecorationTheme: const InputDecorationTheme(
    labelStyle: TextStyle(color: AppColors.black),
    iconColor: AppColors.black,
    prefixIconColor: AppColors.black,
    hintStyle: TextStyle(color: AppColors.black),
  ),
  iconTheme: const IconThemeData(color: AppColors.black, size: 24),
);
