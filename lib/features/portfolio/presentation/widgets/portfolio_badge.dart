import 'package:flutter/material.dart';
import 'package:tayfunucuncu/core/theme/app_fonts.dart';
import '../../../../core/constants/app_layout.dart';
import '../../../../core/theme/catppuccin.dart';

class PortfolioBadge extends StatelessWidget {
  const PortfolioBadge({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppLayout.spacingSmall,
        vertical: AppLayout.spacingSmall / 2,
      ),
      decoration: BoxDecoration(
        color: Catppuccin.mauve.withOpacity(0.1),
        borderRadius: BorderRadius.circular(50),
        border: Border.all(color: Catppuccin.mauve.withOpacity(0.3)),
      ),
      child: Text(
        text,
          style: AppFonts.firaCode(
            color: Catppuccin.mauve,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
      ),
    );
  }
}
