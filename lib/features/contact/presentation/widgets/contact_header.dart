import 'package:flutter/material.dart';
import 'package:tayfunucuncu/core/constants/app_layout.dart';
import 'package:tayfunucuncu/core/theme/app_fonts.dart';
import 'package:tayfunucuncu/core/theme/catppuccin.dart';
import 'package:tayfunucuncu/i18n/strings.g.dart';

class ContactHeader extends StatelessWidget {
  const ContactHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          t.contact.title,
          style: AppFonts.firaCode(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Catppuccin.green,
          ),
        ),

        const SizedBox(height: AppLayout.spacingSmall),

        Text(
          t.contact.subtitle,
          textAlign: TextAlign.center,
          style: AppFonts.firaCode(fontSize: 16, color: Catppuccin.subtext0),
        ),
      ],
    );
  }
}
