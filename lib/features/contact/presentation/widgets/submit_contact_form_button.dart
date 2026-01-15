import 'package:flutter/material.dart';
import 'package:tayfunucuncu/core/theme/app_fonts.dart';
import 'package:tayfunucuncu/core/theme/catppuccin.dart';
import 'package:tayfunucuncu/i18n/strings.g.dart';

class SubmitContactForm extends StatelessWidget {
  const SubmitContactForm({
    super.key,
    required this.formKey,
    required this.nameController,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController nameController;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        if (formKey.currentState!.validate()) {
          debugPrint("Gönderiliyor: ${nameController.text}");
        }
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Catppuccin.green,
        foregroundColor: Catppuccin.base,
        elevation: 4,
        shadowColor: Catppuccin.green.withValues(alpha: 0.3),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
      child: Text(
        t.contact.form.submit.toUpperCase(),
        style: AppFonts.firaCode(fontSize: 15, fontWeight: FontWeight.w800),
      ),
    );
  }
}
