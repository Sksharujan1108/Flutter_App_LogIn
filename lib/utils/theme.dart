import 'package:flutter/material.dart';

const lightColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: Color.fromARGB(255, 0, 0, 0),
  onPrimary: Color.fromARGB(255, 48, 48, 48),
  secondary: Color.fromARGB(255, 255, 255, 255),
  onSecondary: Color.fromARGB(255, 221, 221, 221),
  error: Color(0xFFBA1A1A),
  onError: Color.fromARGB(255, 96, 0, 0),
  background: Color.fromARGB(255, 255, 255, 255),
  onBackground: Color.fromARGB(255, 255, 255, 255),
  shadow: Color(0xFF000000),
  outlineVariant: Color(0xFFC2C8BC),
  surface: Color(0xFFF9FAF3),
  onSurface: Color(0xFF1A1C18),
);

const darkColorScheme = ColorScheme(
  brightness: Brightness.dark,
  primary: Color.fromARGB(255, 255, 255, 255),
  onPrimary: Color.fromARGB(255, 221, 221, 221),
  secondary: Color.fromARGB(255, 0, 0, 0),
  onSecondary: Color.fromARGB(255, 48, 48, 48),
  error: Color(0xFFBA1A1A),
  onError: Color.fromARGB(255, 96, 0, 0),
  background: Color.fromARGB(255, 0, 0, 0),
  onBackground: Color.fromARGB(255, 48, 48, 48),
  shadow: Color(0xFF000000),
  outlineVariant: Color(0xFFC2C8BC),
  surface: Color(0xFF1A1C18),
  onSurface: Color(0xFFF9FAF3),
);

ThemeData lightMode = ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,
  colorScheme: lightColorScheme,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(
        lightColorScheme.primary, // Slightly darker shade for the button
      ),
      foregroundColor:
          MaterialStateProperty.all<Color>(Colors.white), // text color
      elevation: MaterialStateProperty.all<double>(5.0), // shadow
      padding: MaterialStateProperty.all<EdgeInsets>(
          const EdgeInsets.symmetric(horizontal: 20, vertical: 18)),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16), // Adjust as needed
        ),
      ),
    ),
  ),
);

ThemeData darkMode = ThemeData(
  useMaterial3: true,
  brightness: Brightness.dark,
  colorScheme: darkColorScheme,
);
