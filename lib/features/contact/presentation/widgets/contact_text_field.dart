import 'package:flutter/material.dart';
import 'package:tayfunucuncu/core/theme/app_fonts.dart';
import 'package:tayfunucuncu/core/theme/catppuccin.dart';

class ContactTextField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final String hint;
  final IconData? icon;
  final int maxLines;

  const ContactTextField({
    super.key,
    required this.controller,
    required this.label,
    required this.hint,
    this.icon,
    this.maxLines = 1,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      maxLines: maxLines,
      style: AppFonts.firaCode(color: Catppuccin.text, fontSize: 14),
      cursorColor: Catppuccin.green,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: AppFonts.firaCode(color: Catppuccin.overlay1, fontSize: 13),
        floatingLabelStyle: AppFonts.firaCode(
          color: Catppuccin.green,
          fontWeight: FontWeight.bold,
        ),
        hintText: hint,
        hintStyle: AppFonts.firaCode(
          color: Catppuccin.overlay0.withValues(alpha: 0.5),
          fontSize: 13,
        ),
        prefixIcon: icon != null
            ? Icon(icon, color: Catppuccin.overlay1, size: 20)
            : null,
        filled: true,
        fillColor: Catppuccin.mantle.withValues(alpha: 0.7),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(
            color: Catppuccin.surface1.withValues(alpha: 0.2),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: Catppuccin.green, width: 1.5),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: Catppuccin.red, width: 1),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: Catppuccin.red, width: 1.5),
        ),
      ),
      validator: (value) => value == null || value.isEmpty ? '' : null,
    );
  }
}
