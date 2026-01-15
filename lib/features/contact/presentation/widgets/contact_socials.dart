import 'package:flutter/material.dart';
import 'package:tayfunucuncu/features/contact/domain/social_item.dart';
import 'package:tayfunucuncu/features/contact/presentation/widgets/social_pill.dart';

class ContactSocials extends StatelessWidget {
  const ContactSocials({super.key});

  static const List<SocialItem> _items = [
    SocialItem(
      icon: Icons.email_outlined,
      label: "Email",
      value: "tayfunucuncu@gmail.com",
    ),
    SocialItem(icon: Icons.code, label: "GitHub", value: "github.com/tylefnx"),
    SocialItem(
      icon: Icons.work_outline,
      label: "LinkedIn",
      value: "linkedin.com/in/tayfun-üçüncü-b023161b4",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      spacing: 16,
      runSpacing: 16,
      children: _items.map((social) => SocialPill(item: social)).toList(),
    );
  }
}
