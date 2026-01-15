import 'package:flutter/material.dart';
import 'package:tayfunucuncu/core/theme/app_fonts.dart';
import 'package:tayfunucuncu/core/theme/catppuccin.dart';
import 'package:tayfunucuncu/features/services/presentation/widgets/services_grid.dart';
import 'package:tayfunucuncu/i18n/strings.g.dart';

class ServicesSectionBody extends StatelessWidget {
  const ServicesSectionBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: 800,
      ), // Desktopta yayılmayı önler
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            t.services.title,
            style: AppFonts.firaCode(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Catppuccin.green,
            ),
          ),
          const SizedBox(height: 48),
          const ServicesGrid(),
        ],
      ),
    );
  }
}
