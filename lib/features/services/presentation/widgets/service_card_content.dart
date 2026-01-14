import 'package:flutter/material.dart';
import 'package:tayfunucuncu/core/theme/app_fonts.dart';
import 'package:tayfunucuncu/core/constants/app_layout.dart';
import 'package:tayfunucuncu/core/theme/catppuccin.dart';

class ServiceCardContent extends StatelessWidget {
  const ServiceCardContent({
    super.key,
    required this.title,
    required this.desc,
    required this.icon,
    required this.color,
  });

  final String title;
  final String desc;
  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(

      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: AppLayout.spacingSmall,
      children: [
        Icon(icon, size: 40, color: color),
        Padding(
          padding: const EdgeInsets.only(top: AppLayout.spacingSmall * 0.5),
          child: Text(
            title,
            style: AppFonts.firaCode(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Catppuccin.text,
            ),
            textAlign: TextAlign.center,
          ),
        ),

        Flexible(
          child: Text(
            desc,
            textAlign: TextAlign.center,
            style: AppFonts.firaCode(
              color: Catppuccin.subtext0,
              fontSize: 12,
            ),

            softWrap: true,
            overflow: TextOverflow.visible,
          ),
        ),
      ],
    );
  }
}
