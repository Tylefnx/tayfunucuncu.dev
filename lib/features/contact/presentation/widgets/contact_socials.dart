import 'package:flutter/material.dart';
import 'package:tayfunucuncu/core/constants/app_layout.dart';
import 'package:tayfunucuncu/features/contact/domain/social_item.dart';
import 'package:tayfunucuncu/features/contact/presentation/widgets/social_pill.dart';

class ContactSocials extends StatelessWidget {
  const ContactSocials({super.key});

  static const List<SocialItem> _items = [
    SocialItem(
      icon: Icons.email_outlined,
      label: "Email",
      value: "iletisim@tayfun.dev",
    ),
    SocialItem(icon: Icons.code, label: "GitHub", value: "github.com/tayfun"),
    SocialItem(
      icon: Icons.work_outline,
      label: "LinkedIn",
      value: "linkedin.com/in/tayfun",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      spacing: AppLayout.spacingSmall,
      children: _items.map((social) {
        return SocialPill(item: social);
      }).toList(),
    );
  }
}
