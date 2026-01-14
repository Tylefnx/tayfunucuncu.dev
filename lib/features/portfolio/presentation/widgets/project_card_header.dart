import 'package:flutter/material.dart';
import 'package:tayfunucuncu/core/theme/app_fonts.dart';
import 'package:tayfunucuncu/core/theme/catppuccin.dart';

class ProjectCardHeader extends StatelessWidget {
  const ProjectCardHeader({
    super.key,
    required this.title,
    this.hasLink = false,
  });

  final String title;
  final bool hasLink;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: AppFonts.firaCode(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Catppuccin.text,
          ),
        ),
        if (hasLink)
          const Icon(Icons.arrow_outward, color: Catppuccin.overlay0, size: 20),
      ],
    );
  }
}
