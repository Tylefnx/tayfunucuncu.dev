import 'package:flutter/material.dart';
import 'package:tayfunucuncu/core/theme/app_fonts.dart';
import 'package:tayfunucuncu/core/theme/catppuccin.dart';

enum AppButtonVariant { primary, secondary }

class AppButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  final AppButtonVariant variant;

  const AppButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.variant = AppButtonVariant.primary,
  });

  @override
  Widget build(BuildContext context) {
    const double buttonHeight = 56.0;
    final bool isPrimary = variant == AppButtonVariant.primary;

    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        // Boyutlar
        minimumSize: const Size(180, buttonHeight),
        padding: const EdgeInsets.symmetric(horizontal: 32),

        // Renkler: Primary ise dolu yeşil, değilse sadece çerçeve
        backgroundColor: isPrimary ? Catppuccin.green : Colors.transparent,
        foregroundColor: isPrimary ? Catppuccin.base : Catppuccin.green,

        // Kenarlık: Her zaman var ama Primary'de arka planla aynı renk
        side: const BorderSide(color: Catppuccin.green, width: 2),

        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),

        // Hata buradaydı: TextStyle'ı netleştiriyoruz
        textStyle: AppFonts.firaCode(fontSize: 16, fontWeight: FontWeight.bold),
      ),
      child: Text(label),
    );
  }
}
