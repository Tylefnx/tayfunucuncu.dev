import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tayfunucuncu/core/theme/catppuccin.dart';
import 'package:tayfunucuncu/features/contact/presentation/widgets/contact_form_fields.dart';

class ContactForm extends HookConsumerWidget {
  const ContactForm({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nameController = useTextEditingController();
    final emailController = useTextEditingController();
    final messageController = useTextEditingController();
    final formKey = useMemoized(() => GlobalKey<FormState>());

    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 700),
      child: Container(
        decoration: BoxDecoration(
          color: Catppuccin.surface0.withValues(alpha: 0.6),
          borderRadius: BorderRadius.circular(28), // Daha yumuşak, modern köşe
          border: Border.all(color: Catppuccin.surface1.withValues(alpha: 0.4)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.15),
              blurRadius: 30,
              offset: const Offset(0, 15),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 40,
            vertical: 48,
          ), // Nefes alan boşluklar
          child: Form(
            key: formKey,
            child: ContactFormFields(
              nameController: nameController,
              emailController: emailController,
              messageController: messageController,
              formKey: formKey,
            ),
          ),
        ),
      ),
    );
  }
}
