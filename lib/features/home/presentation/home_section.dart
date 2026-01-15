import 'package:flutter/material.dart';
import 'package:tayfunucuncu/core/theme/catppuccin.dart';
import 'package:tayfunucuncu/features/home/presentation/widgets/home_actions.dart';
import 'package:tayfunucuncu/features/home/presentation/widgets/home_hero_text.dart';
import 'package:tayfunucuncu/features/home/presentation/widgets/home_status_pill.dart';

class HomeSection extends StatelessWidget {
  final VoidCallback? onProjectsTap;
  final VoidCallback? onContactTap;
  final ScrollController scrollController;

  const HomeSection({
    super.key,
    this.onProjectsTap,
    this.onContactTap,
    required this.scrollController,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Catppuccin.base,
      child: Center(
        child: SingleChildScrollView(
          controller: scrollController,
          padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 24),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 1000),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const HomeStatusPill(),
                const SizedBox(height: 32),
                const HomeHeroText(),
                const SizedBox(height: 48),
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
