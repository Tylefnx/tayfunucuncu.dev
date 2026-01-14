import 'package:flutter/material.dart';
import 'package:tayfunucuncu/core/theme/app_fonts.dart';
import 'package:tayfunucuncu/core/constants/app_layout.dart';
import 'package:tayfunucuncu/core/theme/catppuccin.dart';
import 'package:tayfunucuncu/features/services/presentation/widgets/services_grid.dart';
import 'package:tayfunucuncu/i18n/strings.g.dart';

class ServicesSectionBody extends StatelessWidget {
  const ServicesSectionBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      // Başlık ve Grid arasındaki boşluğu Column spacing ile yönetiyoruz
      spacing: AppLayout.spacingLarge,
      children: [
        Text(
          t.services.title,
          style: AppFonts.firaCode(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Catppuccin.green,
          ),
        ),
        const ServicesGrid(),
      ],
    );
  }
}
