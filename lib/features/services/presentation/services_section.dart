import 'package:flutter/material.dart';
import 'package:tayfunucuncu/core/theme/catppuccin.dart';
import 'package:tayfunucuncu/features/services/presentation/widgets/services_section_body.dart';
import 'package:tayfunucuncu/shared/widgets/scrollable_section.dart';

// services_section.dart
class ServicesSection extends StatelessWidget {
  final ScrollController scrollController;
  const ServicesSection({super.key, required this.scrollController});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Catppuccin.base,
      child: Center(
        child: ScrollableSection(
          controller: scrollController,
          padding: const EdgeInsets.only(
            top: 100,
            left: 24,
            right: 24,
            bottom: 160,
          ),
          child: const ServicesSectionBody(),
        ),
      ),
    );
  }
}
