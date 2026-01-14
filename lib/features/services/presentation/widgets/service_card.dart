import 'package:flutter/material.dart';
import '../../../../core/constants/app_layout.dart';
import '../../../../core/theme/catppuccin.dart';
import 'service_card_content.dart';

class ServiceCard extends StatelessWidget {
  final String title;
  final String desc;
  final IconData icon;
  final Color color;

  const ServiceCard({
    super.key,
    required this.title,
    required this.desc,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Catppuccin.surface0,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppLayout.borderRadius),
        side: BorderSide(color: Catppuccin.surface1.withOpacity(0.5)),
      ),
child: Padding(
          padding: const EdgeInsets.all(AppLayout.spacingSmall),
          child: ServiceCardContent(
            title: title,
            desc: desc,
            icon: icon,
            color: color,
          ),
        ),
    );
  }
}
