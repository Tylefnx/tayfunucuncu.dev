import 'package:flutter/material.dart';
import 'package:tayfunucuncu/core/theme/catppuccin.dart';
import 'package:tayfunucuncu/features/services/presentation/widgets/service_card_content.dart';

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
    return Container(
      // Geniş ekranda kartların aşırı yayılmasını önlemek için bir iç kısıtlama
      constraints: const BoxConstraints(maxHeight: 250),
      decoration: BoxDecoration(
        color: Catppuccin.surface0.withValues(alpha: 0.5),
        borderRadius: BorderRadius.circular(24), // Daha yumuşak köşeler
        border: Border.all(
          color: Catppuccin.surface1.withValues(alpha: 0.3),
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            blurRadius: 15,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(24),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: ServiceCardContent(
            title: title,
            desc: desc,
            icon: icon,
            color: color,
          ),
        ),
      ),
    );
  }
}
