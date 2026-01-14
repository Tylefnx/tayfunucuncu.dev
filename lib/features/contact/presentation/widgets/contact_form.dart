import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tayfunucuncu/core/constants/app_layout.dart'; // Layout sistemi eklendi
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

    return Card(
      color: Catppuccin.surface0,
      elevation: 0,
      shape: RoundedRectangleBorder(
        // 24 -> AppLayout.borderRadius (Kurumsal kimlik birliği)
        borderRadius: BorderRadius.circular(AppLayout.borderRadius),
        side: BorderSide(color: Catppuccin.surface1.withOpacity(0.5)),
      ),
      child: Padding(
        // 40.0 -> AppLayout.spacingLarge (İçeride ferah alan)
        padding: const EdgeInsets.all(AppLayout.spacingLarge),
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
    );
  }
}
