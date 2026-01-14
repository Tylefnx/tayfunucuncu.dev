import 'package:flutter/material.dart';
import 'package:tayfunucuncu/core/theme/app_fonts.dart';
import 'package:tayfunucuncu/core/theme/catppuccin.dart';
import 'package:tayfunucuncu/i18n/strings.g.dart';

class CustomFooter extends StatelessWidget {
  const CustomFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 100),
        Center(
          child: Text(
            t.footer.copyright,
            style: AppFonts.firaCode(
              color: Catppuccin.overlay1,
              fontSize: 12,
            ),
          ),
        ),
        const SizedBox(height: 50),
      ],
    );
  }
}
