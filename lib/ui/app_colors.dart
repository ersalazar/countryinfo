

import 'package:flutter/material.dart';

class AppColors {
  static const primaryColor = Color(0xFF0077cc); // Blue
  static const accentColor = Color(0xFF4caf50); // Green
  static const lightColor = Color(0xFFffc26e); // Yellow

  static const white = Color(0xFFFFFFFF);
  static const black = Color(0xFF000000);
  static const grey = Color(0xFFE0E0E0);
  static const lightGray = Color(0xFFDDDDDD);

  static final ThemeData darkTheme =ThemeData.dark().copyWith(
    primaryColor: primaryColor,
    appBarTheme: const  AppBarTheme( color: primaryColor, elevation: 0.0),
    scaffoldBackgroundColor: black,
    textTheme: const TextTheme(
          bodyLarge:
              TextStyle(color: white, fontWeight: FontWeight.bold),
          bodyMedium:
              TextStyle(color: white)),
              textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: primaryColor)),
      floatingActionButtonTheme:
          const FloatingActionButtonThemeData(backgroundColor: primaryColor),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
        backgroundColor: primaryColor,
        shape: const StadiumBorder(),
        
  )));

  static final ThemeData lightTheme = ThemeData.light().copyWith(
      primaryColor: primaryColor,
      appBarTheme: const AppBarTheme(color: primaryColor, elevation: 0),
      scaffoldBackgroundColor: Colors.white,
      textTheme: const  TextTheme(
          bodyLarge:
              TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          bodyMedium: TextStyle(color: Colors.black)),
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: primaryColor)),
      floatingActionButtonTheme:
          const FloatingActionButtonThemeData(backgroundColor: primaryColor),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
        backgroundColor: primaryColor,
        shape: const StadiumBorder(),
      )));


  


}