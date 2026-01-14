import 'package:flutter/material.dart';
import 'package:tayfunucuncu/core/theme/app_fonts.dart';
import 'package:tayfunucuncu/core/theme/catppuccin.dart';
import 'package:tayfunucuncu/i18n/strings.g.dart';

class AboutHeader extends StatelessWidget {
  const AboutHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          t.about.header.title,
          style: AppFonts.firaCode(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Catppuccin.green,
          ),
        ),
        const SizedBox(height: 24),
        Text(
          t.about.header.description,
          style: AppFonts.firaCode(fontSize: 18, color: Catppuccin.text),
        ),
      ],
    );
  }
}
