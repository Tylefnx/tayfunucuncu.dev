import 'package:flutter/material.dart';
import 'package:tayfunucuncu/core/constants/app_layout.dart';
import 'package:tayfunucuncu/core/theme/catppuccin.dart';
import 'package:tayfunucuncu/features/contact/presentation/widgets/contact_form.dart';
import 'package:tayfunucuncu/features/contact/presentation/widgets/contact_header.dart';
import 'package:tayfunucuncu/features/contact/presentation/widgets/contact_socials.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.maxFinite,
      color: Catppuccin.base,
      padding: AppLayout.sectionPadding,
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: AppLayout.maxContentWidth,
          ),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ContactHeader(),
              SizedBox(height: AppLayout.spacingLarge),
              ContactForm(),
              SizedBox(height: AppLayout.spacingLarge),
              ContactSocials(),
            ],
          ),
        ),
      ),
    );
  }
}
