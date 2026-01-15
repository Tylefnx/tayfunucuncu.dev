import 'package:flutter/material.dart';
import 'package:tayfunucuncu/core/theme/catppuccin.dart';
import 'package:tayfunucuncu/features/contact/presentation/widgets/contact_form.dart';
import 'package:tayfunucuncu/features/contact/presentation/widgets/contact_header.dart';
import 'package:tayfunucuncu/features/contact/presentation/widgets/contact_socials.dart';
import 'package:tayfunucuncu/shared/widgets/scrollable_section.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key, required this.scrollController});

  final ScrollController scrollController;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Catppuccin.base,
      child: Center(
        child: ScrollableSection(
          controller: scrollController,
          padding: const EdgeInsets.symmetric(vertical: 64, horizontal: 24),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 800),
            child: const Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ContactHeader(),
                SizedBox(height: 48),
                ContactForm(),
                SizedBox(height: 40),
                ContactSocials(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
