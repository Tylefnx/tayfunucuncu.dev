import 'dart:ui';

abstract class Catppuccin {
  Catppuccin._();
  // --- BACKGROUNDS (Arka Plan Tonları) ---
  static const Color base = Color(0xFF1e1e2e); // Ana arka plan
  static const Color mantle = Color(0xFF181825); // Daha koyu arka plan
  static const Color crust = Color(0xFF11111b); // En koyu arka plan

  // --- SURFACES (Kartlar, Butonlar, Paneller için) ---
  static const Color surface0 = Color(
    0xFF313244,
  ); // <--- HATA VEREN BU ARKADAŞTI
  static const Color surface1 = Color(0xFF45475a);
  static const Color surface2 = Color(0xFF585b70);

  // --- TEXT (Yazı Renkleri) ---
  static const Color text = Color(0xFFcdd6f4); // Ana yazı
  static const Color subtext0 = Color(0xFFa6adc8); // İkincil yazı
  static const Color subtext1 = Color(0xFFbac2de);

  // --- OVERLAYS (Silik, Gri tonlar) ---
  static const Color overlay0 = Color(0xFF6c7086);
  static const Color overlay1 = Color(0xFF7f849c);
  static const Color overlay2 = Color(0xFF9399b2);

  // --- ACCENTS (Vurgu Renkleri) ---
  static const Color blue = Color(0xFF89b4fa);
  static const Color lavender = Color(0xFFb4befe);
  static const Color sapphire = Color(0xFF74c7ec);
  static const Color sky = Color(0xFF89dceb);
  static const Color teal = Color(0xFF94e2d5);
  static const Color green = Color(0xFFa6e3a1);
  static const Color yellow = Color(0xFFf9e2af);
  static const Color peach = Color(0xFFfab387);
  static const Color maroon = Color(0xFFeba0ac);
  static const Color red = Color(0xFFf38ba8);
  static const Color mauve = Color(0xFFcba6f7);
  static const Color pink = Color(0xFFf5c2e7);
  static const Color flamingo = Color(0xFFf2cdcd);
  static const Color rosewater = Color(0xFFf5e0dc);
}
