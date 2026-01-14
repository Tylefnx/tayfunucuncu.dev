import 'package:flutter/material.dart';
import 'package:tayfunucuncu/core/theme/app_fonts.dart';
import 'package:tayfunucuncu/core/constants/app_layout.dart';
import 'package:tayfunucuncu/core/theme/catppuccin.dart';
import 'package:tayfunucuncu/features/about/domain/about_item.dart';

class AboutDetailItem extends StatelessWidget {
  final AboutItem item;

  const AboutDetailItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          item.title,
          style: AppFonts.firaCode(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: Catppuccin.blue,
          ),
        ),


        const SizedBox(height: AppLayout.spacingSmall),

        Text(
          item.content,
          style: AppFonts.firaCode(fontSize: 16, color: Catppuccin.subtext0),
        ),
      ],
    );
  }
}
