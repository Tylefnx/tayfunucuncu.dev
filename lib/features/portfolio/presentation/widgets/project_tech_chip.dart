import 'package:flutter/material.dart';
import 'package:tayfunucuncu/core/theme/app_fonts.dart';
import 'package:tayfunucuncu/core/constants/app_layout.dart';
import 'package:tayfunucuncu/core/theme/catppuccin.dart';

class ProjectTechChip extends StatelessWidget {
  const ProjectTechChip({super.key, required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppLayout.spacingSmall,
        vertical: AppLayout.spacingSmall / 2,
      ),
      decoration: BoxDecoration(
        color: Catppuccin.base,
        borderRadius: BorderRadius.circular(50),
        border: Border.all(color: Catppuccin.surface1),
      ),
      child: Text(
        label,
        style: AppFonts.firaCode(
          color: Catppuccin.rosewater,
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
