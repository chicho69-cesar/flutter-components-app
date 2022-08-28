import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.indigo;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    // Color primario
    primaryColor: primary,

    // Appbar Theme
    appBarTheme: const AppBarTheme(
      color: primary, 
      elevation: 0
    ),

    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(primary: primary), 
    ),

    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primary,
      elevation: 5,
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: AppTheme.primary,
        shape: const StadiumBorder(),
        elevation: 10,
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 45),
      )
    )
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    // Color primario
    primaryColor: primary,

    // Appbar Theme
    appBarTheme: const AppBarTheme(
      color: primary, 
      elevation: 0
    ),

    // Scaffold
    scaffoldBackgroundColor: Colors.black
  );
}
