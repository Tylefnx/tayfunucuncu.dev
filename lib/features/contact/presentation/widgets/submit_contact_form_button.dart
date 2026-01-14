import 'package:flutter/material.dart';
import 'package:tayfunucuncu/core/theme/app_fonts.dart';
import 'package:tayfunucuncu/core/constants/app_layout.dart';
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
    return SizedBox(
      height: 56, // Standart buton yüksekliği
      child: ElevatedButton(
        onPressed: () {
          if (formKey.currentState!.validate()) {
            debugPrint("Gönderiliyor: ${nameController.text}");
          }
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Catppuccin.green,
          foregroundColor: Catppuccin.base,
          elevation: 0,
          shape: RoundedRectangleBorder(
            // Buton radius değerini de standartlaştırdık
            borderRadius: BorderRadius.circular(AppLayout.borderRadius / 1.5),
          ),
        ),
        child: Text(
          t.contact.form.submit.toUpperCase(),
          style: AppFonts.firaCode(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
