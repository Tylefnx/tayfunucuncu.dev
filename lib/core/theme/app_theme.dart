import 'package:flutter/material.dart';
import 'package:tayfunucuncu/core/theme/catppuccin.dart';

abstract class AppTheme {
  AppTheme._();

  static const Color _primaryColor = Catppuccin.green;

  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,


      colorScheme: const ColorScheme.dark(
        primary: _primaryColor,
        onPrimary: Catppuccin.base,
        secondary: Catppuccin.blue,
        surface: Catppuccin.surface0,
        error: Catppuccin.red,
        onSurface: Catppuccin.text,
      ),


      scaffoldBackgroundColor: Catppuccin.base,
      canvasColor: Catppuccin.base,


      textTheme: ThemeData.dark().textTheme.copyWith(
        bodyLarge: TextStyle(
          fontFamily: 'FiraCode',
          color: Catppuccin.text,
        ),
        bodyMedium: TextStyle(
          fontFamily: 'FiraCode',
          color: Catppuccin.text,
        ),
        headlineLarge: TextStyle(
          fontFamily: 'FiraCode',
          color: Catppuccin.text,
        ),
        headlineMedium: TextStyle(
          fontFamily: 'FiraCode',
          color: Catppuccin.text,
        ),
        titleLarge: TextStyle(
          fontFamily: 'FiraCode',
          color: Catppuccin.text,
        ),
        titleMedium: TextStyle(
          fontFamily: 'FiraCode',
          color: Catppuccin.text,
        ),
      ),


      appBarTheme: AppBarTheme(
        backgroundColor: Catppuccin.base,
        elevation: 0,
        centerTitle: false,
        titleTextStyle: const TextStyle(
          fontFamily: 'FiraCode',
          color: _primaryColor,
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
        iconTheme: const IconThemeData(color: Catppuccin.text),
      ),


      cardTheme: CardThemeData(
        color: Catppuccin.surface0,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: BorderSide(color: Catppuccin.surface1.withOpacity(0.5)),
        ),
      ),

      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(foregroundColor: Catppuccin.text),
      ),

      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Catppuccin.mantle,
        labelStyle: const TextStyle(color: Catppuccin.subtext0),
        hintStyle: const TextStyle(color: Catppuccin.overlay0),
        contentPadding: const EdgeInsets.all(20),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Catppuccin.surface1.withOpacity(0.5)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: _primaryColor, width: 1.5),
        ),
      ),
    );
  }
}
