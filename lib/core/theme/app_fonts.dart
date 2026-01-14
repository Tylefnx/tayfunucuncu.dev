import 'package:flutter/material.dart';

class AppFonts {
  AppFonts._();

  static TextStyle firaCode({
    double? fontSize,
    FontWeight? fontWeight,
    Color? color,
  }) {
    return TextStyle(
      fontFamily: 'FiraCode',
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
    );
  }

  // Predefined styles
  static TextStyle get body => firaCode(fontSize: 14);
  static TextStyle get caption => firaCode(fontSize: 12);
  static TextStyle get headline => firaCode(
        fontSize: 24,
        fontWeight: FontWeight.bold,
      );
  static TextStyle get title => firaCode(
        fontSize: 18,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get subtitle => firaCode(fontSize: 16);
  static TextStyle get button => firaCode(
        fontSize: 14,
        fontWeight: FontWeight.w500,
      );
}