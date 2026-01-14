import 'package:flutter/material.dart';
import 'package:tayfunucuncu/core/theme/app_fonts.dart';
import 'package:tayfunucuncu/core/constants/app_layout.dart';
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: AppFonts.firaCode(
            color: Catppuccin.text,
            fontWeight: FontWeight.w600,
            fontSize: 14,
          ),
        ),

        const SizedBox(height: AppLayout.spacingSmall / 1.5),

        TextFormField(
          controller: controller,
          maxLines: maxLines,
          style: AppFonts.firaCode(color: Catppuccin.text),
          cursorColor: Catppuccin.green,
          validator: (value) =>
              value == null || value.isEmpty ? 'Bu alan zorunludur' : null,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: AppFonts.firaCode(color: Catppuccin.overlay0),
            prefixIcon: icon != null
                ? Icon(icon, color: Catppuccin.overlay1)
                : null,
            filled: true,
            fillColor: Catppuccin.mantle,


            contentPadding: const EdgeInsets.all(AppLayout.spacingMedium),

            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppLayout.borderRadius / 1.5),
              borderSide: BorderSide.none,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppLayout.borderRadius / 1.5),
              borderSide: BorderSide(
                color: Catppuccin.surface1.withOpacity(0.3),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppLayout.borderRadius / 1.5),
              borderSide: const BorderSide(color: Catppuccin.green, width: 1.5),
            ),
          ),
        ),
      ],
    );
  }
}
