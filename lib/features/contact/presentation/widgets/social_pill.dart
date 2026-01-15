import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:tayfunucuncu/core/theme/app_fonts.dart';
import 'package:tayfunucuncu/core/theme/catppuccin.dart';
import 'package:tayfunucuncu/features/contact/domain/social_item.dart';

class SocialPill extends StatelessWidget {
  final SocialItem item;
  const SocialPill({super.key, required this.item});

  Future<void> _handleTap() async {
    Uri url;
    if (item.label.toLowerCase() == 'email') {
      // Mail linki: mailto:iletisim@tayfun.dev
      url = Uri.parse('mailto:${item.value}');
    } else {
      // Normal link: https://github.com/tayfun
      // Eğer değerin başında http yoksa otomatik ekleyelim
      String path = item.value.startsWith('http')
          ? item.value
          : 'https://${item.value}';
      url = Uri.parse(path);
    }

    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click, // Web'de el işareti çıkması için
      child: GestureDetector(
        onTap: _handleTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          decoration: BoxDecoration(
            color: Catppuccin.surface0,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: Catppuccin.surface1.withValues(alpha: 0.3),
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(item.icon, size: 18, color: Catppuccin.blue),
              const SizedBox(width: 8),
              Text(
                item.value,
                style: AppFonts.firaCode(color: Catppuccin.text, fontSize: 13),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
