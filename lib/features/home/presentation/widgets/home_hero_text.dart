import 'package:flutter/material.dart';
import 'package:tayfunucuncu/core/constants/app_layout.dart';
import 'package:tayfunucuncu/core/theme/app_fonts.dart';
import 'package:tayfunucuncu/core/theme/catppuccin.dart';
import 'package:tayfunucuncu/i18n/strings.g.dart';

class HomeHeroText extends StatelessWidget {
  const HomeHeroText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          t.home.heroTitle,
          style: AppFonts.firaCode(
            fontSize: 56,
            fontWeight: FontWeight.w900,
            color: Catppuccin.text,
          ),
        ),

        const SizedBox(height: AppLayout.spacingMedium),

        Text(
          t.home.heroDescription,
          style: AppFonts.firaCode(fontSize: 18, color: Catppuccin.subtext0),
        ),
      ],
    );
  }
}
