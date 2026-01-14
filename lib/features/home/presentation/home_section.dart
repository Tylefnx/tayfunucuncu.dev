import 'package:flutter/material.dart';
import 'package:tayfunucuncu/core/constants/app_layout.dart';
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

          padding: AppLayout.sectionPadding,
          child: ConstrainedBox(

            constraints: const BoxConstraints(
              maxWidth: AppLayout.maxContentWidth,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                const HomeStatusPill(),

                const SizedBox(height: AppLayout.spacingLarge),
                const HomeHeroText(),
                const SizedBox(
                  height: AppLayout.spacingLarge * 1.5,
                ),
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
