import 'package:flutter/material.dart';
import 'package:portfolio/presentation/widget/responsive.dart';

Widget buildTheme(BuildContext context, Widget? child) {
  return Theme(
    data: Responsive.isLarge(context) ? AppTheme.largeTheme : AppTheme.theme,
    child: child!,
  );
}

class AppTheme {
  static const TextStyle _defaultText = const TextStyle(
    fontFamily: Fonts.rubik,
    fontWeight: FontWeight.w400,
  );

  static ElevatedButtonThemeData _defaultElevatedButtonTheme =
      ElevatedButtonThemeData(
    style: ButtonStyle(
      padding: MaterialStateProperty.all(
        EdgeInsets.symmetric(
          vertical: 24.0,
          horizontal: 48.0,
        ),
      ),
      backgroundColor: MaterialStateProperty.all(AppColors.primary),
    ),
  );

  static TextButtonThemeData _defaultTextButtonTheme = TextButtonThemeData(
    style: ButtonStyle(
        padding: MaterialStateProperty.all(
          EdgeInsets.symmetric(
            vertical: 24.0,
            horizontal: 48.0,
          ),
        ),
        backgroundColor: MaterialStateProperty.all(AppColors.primary),
        foregroundColor: MaterialStateProperty.all(AppColors.textPrimary),
        textStyle: MaterialStateProperty.all(
            _defaultText.copyWith(fontSize: FontSizes.s14))),
  );

  static ThemeData theme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: AppColors.primary,
    accentColor: AppColors.secondary,
    scaffoldBackgroundColor: AppColors.primary,
    fontFamily: Fonts.rubik,
    iconTheme: IconThemeData(color: AppColors.icon),
    elevatedButtonTheme: _defaultElevatedButtonTheme,
    textButtonTheme: _defaultTextButtonTheme,
    textTheme: TextTheme(
      headline4: _defaultText.copyWith(
        fontSize: FontSizes.s35,
        color: AppColors.textAccent,
        fontWeight: FontWeight.w500,
      ),
      subtitle1: _defaultText.copyWith(
        fontSize: FontSizes.s24,
        color: AppColors.textPrimary,
        fontWeight: FontWeight.w500,
      ),
      subtitle2: _defaultText.copyWith(
        fontSize: FontSizes.s22,
        color: AppColors.textPrimary,
        fontWeight: FontWeight.w500,
      ),
      bodyText1: _defaultText.copyWith(
        fontWeight: FontWeight.w300,
        fontSize: FontSizes.s16,
        color: AppColors.textPrimary,
      ),
      button: _defaultText.copyWith(
        fontWeight: FontWeight.w400,
        fontSize: FontSizes.s14,
        color: AppColors.textPrimary,
      ),
      caption: _defaultText.copyWith(
        fontWeight: FontWeight.w300,
        fontSize: FontSizes.s12,
        color: AppColors.textSecondary,
      ),
      overline: _defaultText.copyWith(
        fontWeight: FontWeight.w300,
        fontSize: FontSizes.s10,
        color: AppColors.textSecondary,
      ),
    ),
  );

  static ThemeData largeTheme = theme.copyWith(
    textTheme: TextTheme(
      headline4: _defaultText.copyWith(
        fontSize: FontSizes.s70,
        color: AppColors.textAccent,
        fontWeight: FontWeight.w500,
      ),
      subtitle1: _defaultText.copyWith(
        fontSize: FontSizes.s28,
        color: AppColors.textPrimary,
        fontWeight: FontWeight.w500,
      ),
      subtitle2: _defaultText.copyWith(
        fontSize: FontSizes.s24,
        color: AppColors.textPrimary,
        fontWeight: FontWeight.w500,
      ),
      bodyText1: _defaultText.copyWith(
        fontWeight: FontWeight.w300,
        fontSize: FontSizes.s20,
        color: AppColors.textPrimary,
      ),
      button: _defaultText.copyWith(
        fontWeight: FontWeight.w400,
        fontSize: FontSizes.s24,
        color: AppColors.textPrimary,
      ),
      caption: _defaultText.copyWith(
        fontWeight: FontWeight.w300,
        fontSize: FontSizes.s16,
        color: AppColors.textSecondary,
      ),
      overline: _defaultText.copyWith(
        fontWeight: FontWeight.w300,
        fontSize: FontSizes.s14,
        color: AppColors.textSecondary,
      ),
    ),
  );
}

class Durations {
  static const Duration scroll = const Duration(milliseconds: 350);
}

class Keys {
  static GlobalKey about = GlobalKey();
  static GlobalKey experience = GlobalKey();
  static GlobalKey projects = GlobalKey();
  static GlobalKey contacts = GlobalKey();
}

class Insets {
  static const double sectionVerticalOffsetLarge = 211.0;
  static const double sectionHorizontalOffsetLarge = 166.0;
  static const double sectionVerticalOffsetSmall = 56.0;
  static const double sectionHorizontalOffsetSmall = 32.0;
}

class Fonts {
  static const String rubik = "Rubik";
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
  static const double s28 = 28.0;
  static const double s35 = 35.0;
  static const double s70 = 70.0;
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
