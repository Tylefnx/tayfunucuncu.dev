import 'package:flutter/material.dart';
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
    return LayoutBuilder(
      builder: (context, constraints) {
        final isMobile = constraints.maxWidth < 550;

        return Column(
          children: [
            if (isMobile) ...[
              ContactTextField(
                controller: nameController,
                label: 'Name',
                hint: t.contact.form.namePlaceholder,
                icon: Icons.person_rounded,
              ),
              const SizedBox(height: 20),
              ContactTextField(
                controller: emailController,
                label: 'Email',
                hint: t.contact.form.emailPlaceholder,
                icon: Icons.alternate_email_rounded,
              ),
            ] else
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: ContactTextField(
                      controller: nameController,
                      label: 'Name',
                      hint: t.contact.form.namePlaceholder,
                      icon: Icons.person_rounded,
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: ContactTextField(
                      controller: emailController,
                      label: 'Email',
                      hint: t.contact.form.emailPlaceholder,
                      icon: Icons.alternate_email_rounded,
                    ),
                  ),
                ],
              ),
            const SizedBox(height: 20),
            ContactTextField(
              controller: messageController,
              label: 'Message',
              hint: t.contact.form.messagePlaceholder,
              maxLines: 5,
            ),
            const SizedBox(height: 40),
            SizedBox(
              width: isMobile
                  ? double.infinity
                  : 280, // Mobilde full, desktopta dengeli genişlik
              height: 54,
              child: SubmitContactForm(
                formKey: formKey,
                nameController: nameController,
              ),
            ),
          ],
        );
      },
    );
  }
}
