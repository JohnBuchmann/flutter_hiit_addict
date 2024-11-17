import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    useMaterial3: true,
    colorScheme: const ColorScheme.dark(
      surface: Color(0xFF1C1C1C),
      surfaceContainerHighest: Color(0xFF2C2C2C),
      primary: Color(0xFFB94133),
      secondary: Color(0xFFFFD740),
      tertiary: Color(0xFF8B2F25),
      onPrimary: Colors.white,
      onSurface: Colors.white,
      onSecondary: Colors.black,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.grey[200],
        foregroundColor: Colors.black,
      ),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.grey[900],
      foregroundColor: Colors.white,
    ),
  );

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    useMaterial3: true,
    colorScheme: const ColorScheme.light(
      surface: Colors.white,
      surfaceContainerHighest: Color(0xFFF5F5F5),
      primary: Color(0xFFA63A2D),
      secondary: Color(0xFFFFB300),
      tertiary: Color(0xFF8B2F25),
      onPrimary: Colors.white,
      onSurface: Color(0xFF2C2C2C),
      onSecondary: Colors.black,
      onTertiary: Colors.white,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.grey[800],
        foregroundColor: Colors.white,
      ),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
    ),
    textSelectionTheme: TextSelectionThemeData(
      selectionColor: Colors.grey[800],
    ),
  );
}
