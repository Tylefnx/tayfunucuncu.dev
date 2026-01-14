import 'package:flutter/material.dart';
import 'package:tayfunucuncu/core/constants/app_layout.dart';
import 'package:tayfunucuncu/features/home/presentation/widgets/contact_me_button.dart';
import 'package:tayfunucuncu/features/home/presentation/widgets/view_projects_button.dart';

class HomeActions extends StatelessWidget {
  final VoidCallback? onProjectsTap;
  final VoidCallback? onContactTap;

  const HomeActions({super.key, this.onProjectsTap, this.onContactTap});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.transparent,
      child: Wrap(
        spacing: AppLayout.spacingMedium,
        runSpacing: AppLayout.spacingMedium,
        children: [
          ViewProjectsButton(onPressed: onProjectsTap),
          ContactMeButton(onPressed: onContactTap),
        ],
      ),
    );
  }
}
