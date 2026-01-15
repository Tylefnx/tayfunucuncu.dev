import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:tayfunucuncu/core/theme/catppuccin.dart';
import 'package:tayfunucuncu/features/services/presentation/widgets/services_section_body.dart';

// services_section.dart
class ServicesSection extends StatelessWidget {
  final ScrollController scrollController;
  const ServicesSection({super.key, required this.scrollController});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Catppuccin.base,
      child: Center(
        child: SingleChildScrollView(
          controller: scrollController, // MainPage'den gelen kumanda
          padding: const EdgeInsets.only(
            top: 100,
            left: 24,
            right: 24,
            bottom:
                160, // Buradaki pay, scroll'un en sonda kilitlenmemesini sağlar
          ),
          child: const ServicesSectionBody(),
        ),
      ),
    );
  }
}
