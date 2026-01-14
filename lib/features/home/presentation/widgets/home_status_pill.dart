import 'package:flutter/material.dart';
import 'package:tayfunucuncu/core/theme/app_fonts.dart';
import 'package:tayfunucuncu/core/theme/catppuccin.dart';
import 'package:tayfunucuncu/i18n/strings.g.dart';

class HomeStatusPill extends StatelessWidget {
  const HomeStatusPill({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Catppuccin.surface0,
        borderRadius: BorderRadius.circular(50),
        border: Border.all(color: Catppuccin.surface1),
      ),
      child: Text(
        t.home.statusPill,
        style: AppFonts.firaCode(
          color: Catppuccin.mauve,
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
