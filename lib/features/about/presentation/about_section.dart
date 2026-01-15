import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tayfunucuncu/core/theme/catppuccin.dart';
import 'package:tayfunucuncu/features/about/presentation/widgets/about_section_body.dart';

class AboutSection extends HookConsumerWidget {
  final ScrollController scrollController;
  const AboutSection({super.key, required this.scrollController});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: double.infinity,
      color: Catppuccin.base,
      child: Center(
        child: SingleChildScrollView(
          controller: scrollController,
          padding: const EdgeInsets.only(
            top: 100,
            left: 24,
            right: 24,
            bottom: 160,
          ),
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 1000,
            ), // AppLayout.maxContentWidth yerine sabit veya kısıtlı
            child: const AboutSectionBody(),
          ),
        ),
      ),
    );
  }
}
