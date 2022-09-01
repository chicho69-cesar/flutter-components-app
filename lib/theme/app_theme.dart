import 'package:flutter/material.dart';

class AppTheme {
  // static const Color primary = Colors.indigo;
  static const Color primary = Colors.orange;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    // Color primario
    primaryColor: primary,

    // Appbar Theme
    appBarTheme: const AppBarTheme(
      color: primary, 
      elevation: 0,
      iconTheme: IconThemeData(
        size: 25,
        color: Colors.white
      )
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
    ),

    inputDecorationTheme: const InputDecorationTheme(
      floatingLabelStyle: TextStyle(
        color: primary,
        fontSize: 18,
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: primary
        ),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(10),
          bottomLeft: Radius.circular(10)
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: primary
        ),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(10),
          bottomLeft: Radius.circular(10)
        ),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(10),
          bottomLeft: Radius.circular(10)
        )
      ),
    ),
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

  static final ThemeData halloweenTheme = ThemeData.dark().copyWith(
    // Color primario
    primaryColor: primary,

    // Appbar Theme
    appBarTheme: const AppBarTheme(
      color: primary, 
      elevation: 0,
      iconTheme: IconThemeData(
        size: 25,
        color: Colors.white
      )
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
    ),

    inputDecorationTheme: const InputDecorationTheme(
      floatingLabelStyle: TextStyle(
        color: primary,
        fontSize: 18,
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: primary
        ),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(10),
          bottomLeft: Radius.circular(10)
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: primary
        ),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(10),
          bottomLeft: Radius.circular(10)
        ),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(10),
          bottomLeft: Radius.circular(10)
        )
      ),
    ),
  );
}
