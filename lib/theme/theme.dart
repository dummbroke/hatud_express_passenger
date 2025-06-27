import 'package:flutter/material.dart';

class AppColors {
  static const Color primary = Color(0xFF0ABAB5);      // Main action buttons
  static const Color secondary = Color(0xFF56DFCF);    // Banner/header
  static const Color tertiary = Color(0xFFADEED9);     // (Optional) for special highlights
  static const Color quaternary = Color(0xFFFFEDF3);   // Sign up button, backgrounds
  static const Color dark = Colors.black87;            // Text
  static const Color light = Color(0xFFFFEDF3);        // General background
  static const Color white = Colors.white;             // For cards, inputs, etc.
}

final ThemeData appTheme = ThemeData(
  scaffoldBackgroundColor: AppColors.light,
  appBarTheme: AppBarTheme(
    backgroundColor: AppColors.secondary,
    foregroundColor: AppColors.dark,
    elevation: 0,
    iconTheme: IconThemeData(color: AppColors.dark),
    titleTextStyle: TextStyle(
      color: AppColors.dark,
      fontWeight: FontWeight.bold,
      fontSize: 20,
    ),
  ),
  colorScheme: ColorScheme(
    primary: AppColors.primary,
    secondary: AppColors.secondary,
    surface: AppColors.white,
    error: Colors.red,
    onPrimary: Colors.white,
    onSecondary: AppColors.dark,
    onSurface: AppColors.dark,
    onError: Colors.white,
    brightness: Brightness.light,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: WidgetStateProperty.resolveWith<Color>((states) {
        if (states.contains(WidgetState.disabled)) {
          return AppColors.tertiary;
        }
        return AppColors.primary;
      }),
      foregroundColor: WidgetStateProperty.all(AppColors.white),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
      textStyle: WidgetStateProperty.all(
        TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
      ),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      backgroundColor: AppColors.white,
      foregroundColor: AppColors.dark,
      side: BorderSide(color: AppColors.primary, width: 2),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: AppColors.primary,
      textStyle: TextStyle(fontWeight: FontWeight.bold),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: AppColors.white,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: AppColors.primary),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: AppColors.primary, width: 2),
    ),
    labelStyle: TextStyle(color: AppColors.dark),
    hintStyle: TextStyle(color: AppColors.dark.withOpacity(0.5)),
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: AppColors.white,
    selectedItemColor: AppColors.primary,
    unselectedItemColor: AppColors.dark.withOpacity(0.5),
    showUnselectedLabels: true,
    type: BottomNavigationBarType.fixed,
  ),
  textTheme: TextTheme(
    bodyLarge: TextStyle(color: AppColors.dark),
    bodyMedium: TextStyle(color: AppColors.dark),
    titleLarge: TextStyle(color: AppColors.dark, fontWeight: FontWeight.bold),
    labelLarge: TextStyle(color: AppColors.dark, fontWeight: FontWeight.bold),
  ),
);