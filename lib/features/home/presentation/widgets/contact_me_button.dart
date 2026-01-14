import 'package:flutter/material.dart';
import 'package:tayfunucuncu/core/presentation/app_button.dart';
import 'package:tayfunucuncu/i18n/strings.g.dart';

class ContactMeButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const ContactMeButton({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return AppButton(
      label: t.home.contactMe,
      onPressed: onPressed,
      variant: AppButtonVariant.secondary,
    );
  }
}
