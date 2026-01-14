import 'package:flutter/material.dart';
import 'package:tayfunucuncu/core/constants/app_layout.dart';
import 'package:tayfunucuncu/features/contact/presentation/widgets/contact_text_field.dart';
import 'package:tayfunucuncu/features/contact/presentation/widgets/submit_contact_form_button.dart';
import 'package:tayfunucuncu/i18n/strings.g.dart';

class ContactFormFields extends StatelessWidget {
  const ContactFormFields({
    super.key,
    required this.nameController,
    required this.emailController,
    required this.messageController,
    required this.formKey,
  });

  final TextEditingController nameController;
  final TextEditingController emailController;
  final TextEditingController messageController;
  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: AppLayout.spacingMedium,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ContactTextField(
          controller: nameController,
          label: t.contact.form.name,
          hint: t.contact.form.namePlaceholder,
          icon: Icons.person_outline,
        ),
        ContactTextField(
          controller: emailController,
          label: t.contact.form.email,
          hint: t.contact.form.emailPlaceholder,
          icon: Icons.alternate_email,
        ),
        ContactTextField(
          controller: messageController,
          label: t.contact.form.message,
          hint: t.contact.form.messagePlaceholder,
          maxLines: 5,
        ),
        const SizedBox(height: AppLayout.spacingSmall),
        SubmitContactForm(formKey: formKey, nameController: nameController),
      ],
    );
  }
}
