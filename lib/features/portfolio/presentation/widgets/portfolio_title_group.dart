import 'package:flutter/material.dart';
import 'package:tayfunucuncu/core/theme/app_fonts.dart';
import '../../../../core/theme/catppuccin.dart';

class PortfolioTitleGroup extends StatelessWidget {
  const PortfolioTitleGroup({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      spacing: 12,
      children: [
        Text(
          "Featured Projects",
          style: AppFonts.firaCode(
            fontSize: 48,
            fontWeight: FontWeight.w800,
            color: Catppuccin.text,
          ),
        ),
        Text(
          "A collection of applications, tools, and experiments I've built using Flutter and Go.",
          style: AppFonts.firaCode(fontSize: 18, color: Catppuccin.overlay0),
        ),
      ],
    );
  }
}
