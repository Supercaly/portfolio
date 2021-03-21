import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData theme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: AppColors.primary,
    accentColor: AppColors.secondary,
    backgroundColor: AppColors.primary,
    fontFamily: "Rubik",
    iconTheme: IconThemeData(color: AppColors.icon),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        padding: MaterialStateProperty.all(
          EdgeInsets.symmetric(
            vertical: 24.0,
            horizontal: 48.0,
          ),
        ),
        backgroundColor: MaterialStateProperty.all(AppColors.primary),
      ),
    ),
    textTheme: TextTheme(
        headline4: TextStyle(
          fontFamily: "Rubik",
          fontSize: FontSizes.s35,
          color: AppColors.textAccent,
          fontWeight: FontWeight.w500,
        ),
        subtitle1: TextStyle(
          fontFamily: "Rubik",
          fontSize: FontSizes.s24,
          color: AppColors.textPrimary,
          fontWeight: FontWeight.w500,
        ),
        subtitle2: TextStyle(
          fontFamily: "Rubik",
          fontSize: FontSizes.s22,
          color: AppColors.textPrimary,
          fontWeight: FontWeight.w500,
        ),
        bodyText1: TextStyle(
          fontFamily: "Rubik",
          fontWeight: FontWeight.w300,
          fontSize: FontSizes.s16,
          color: AppColors.textPrimary,
        ),
        button: TextStyle(
          fontFamily: "Rubik",
          fontWeight: FontWeight.w400,
          fontSize: FontSizes.s14,
          color: AppColors.textPrimary,
        ),
        caption: TextStyle(
          fontFamily: "Rubik",
          fontWeight: FontWeight.w300,
          fontSize: FontSizes.s12,
          color: AppColors.textSecondary,
        ),
        overline: TextStyle(
          fontFamily: "Rubik",
          fontWeight: FontWeight.w300,
          fontSize: FontSizes.s10,
          color: AppColors.textSecondary,
        )),
  );

  static Color shift(Color c) {
    final amt = 1 * 0.1;
    var hslc = HSLColor.fromColor(c); // Convert to HSL
    double lightness =
        (hslc.lightness + amt).clamp(0, 1.0) as double; // Add/Remove lightness
    return hslc.withLightness(lightness).toColor(); // Convert back to Color
  }
}

class FontSizes {
  static const double s10 = 10.0;
  static const double s12 = 12.0;
  static const double s14 = 14.0;
  static const double s16 = 16.0;
  static const double s18 = 18.0;
  static const double s20 = 20.0;
  static const double s22 = 22.0;
  static const double s24 = 24.0;
  static const double s35 = 35.0;
}

class AppColors {
  static const Color primary = Color(0xFF2A4054);
  static const Color secondary = Color(0xFF1BB59E);
  static const Color textPrimary = Color(0xFFF5FFFC);
  static const Color textSecondary = Color(0xFFB7B7B7);
  static const Color textAccent = Color(0xFF7D9F9A);
  static const Color icon = Color(0xFFB7B7B7);
  static const Color iconSecondary = Color(0xFF1B90B5);
}
