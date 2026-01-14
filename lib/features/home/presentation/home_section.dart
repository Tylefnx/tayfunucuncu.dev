import 'package:flutter/material.dart';
import 'package:tayfunucuncu/core/constants/app_layout.dart'; // AppLayout buradan geliyor
import 'package:tayfunucuncu/core/theme/catppuccin.dart';
import 'package:tayfunucuncu/features/home/presentation/widgets/home_actions.dart';
import 'package:tayfunucuncu/features/home/presentation/widgets/home_hero_text.dart';
import 'package:tayfunucuncu/features/home/presentation/widgets/home_status_pill.dart';

class HomeSection extends StatelessWidget {
  final VoidCallback? onProjectsTap;
  final VoidCallback? onContactTap;

  const HomeSection({super.key, this.onProjectsTap, this.onContactTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Catppuccin.base,
      child: Center(
        child: SingleChildScrollView(
          // Padding artık tamamen AppLayout'tan besleniyor
          padding: AppLayout.sectionPadding,
          child: ConstrainedBox(
            // Maksimum genişlik artık merkezi AppLayout.maxContentWidth
            constraints: const BoxConstraints(
              maxWidth: AppLayout.maxContentWidth,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                const HomeStatusPill(),
                // Spacing değerlerini de AppLayout standartlarına çektik
                const SizedBox(height: AppLayout.spacingLarge),
                const HomeHeroText(),
                const SizedBox(
                  height: AppLayout.spacingLarge * 1.5,
                ), // Hero text sonrası biraz daha boşluk iyi durur
                HomeActions(
                  onProjectsTap: onProjectsTap,
                  onContactTap: onContactTap,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
