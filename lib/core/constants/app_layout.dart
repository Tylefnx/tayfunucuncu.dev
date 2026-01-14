import 'package:flutter/material.dart';

class AppLayout {
  const AppLayout._();

  // --- GENİŞLİK ---
  // Tüm bölümlerin (About, Contact, vb.) ortak maksimum genişliği.
  // Bu, sitenin aşağı doğru dümdüz bir sütun gibi hizalanmasını sağlar.
  static const double maxContentWidth = 900.0;

  // --- PADDING (BOŞLUK) ---
  // Bölümlerin üst/alt ve yan boşlukları için standart.
  static const EdgeInsets sectionPadding = EdgeInsets.only(
    left: 32.0,
    right: 32.0,
    top: 50,
  );

  // --- SPACING (ELEMAN ARASI) ---
  static const double spacingLarge = 32.0;
  static const double spacingMedium = 24.0;
  static const double spacingSmall = 12.0;

  // --- RADIUS ---
  static const double borderRadius = 16.0;
}
