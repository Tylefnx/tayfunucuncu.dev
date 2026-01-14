import 'package:flutter/material.dart';
import 'package:tayfunucuncu/core/constants/app_layout.dart';
import 'package:tayfunucuncu/core/theme/catppuccin.dart';
import 'package:tayfunucuncu/features/contact/domain/social_item.dart';
import 'package:tayfunucuncu/features/contact/presentation/widgets/social_pill_content.dart';

class SocialPill extends StatelessWidget {
  final SocialItem item;

  const SocialPill({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppLayout.spacingMedium,
        vertical: AppLayout.spacingSmall,
      ),
      decoration: BoxDecoration(
        color: Catppuccin.surface0,
        borderRadius: BorderRadius.circular(50),
        border: Border.all(color: Catppuccin.surface1.withOpacity(0.5)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,

        spacing: AppLayout.spacingSmall / 1.2,
        children: [
          Icon(item.icon, size: 20, color: Catppuccin.blue),
          SocialPillContent(label: item.label, value: item.value),
        ],
      ),
    );
  }
}


