import 'package:flutter/material.dart';
import 'package:tayfunucuncu/core/theme/app_fonts.dart';
import 'package:tayfunucuncu/core/theme/catppuccin.dart';

class ServiceCardContent extends StatelessWidget {
  const ServiceCardContent({
    super.key,
    required this.title,
    required this.desc,
    required this.icon,
    required this.color,
  });

  final String title;
  final String desc;
  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // Kartın dikey alanı çok darsa (mobil veya dar pencere) ikon boyutunu küçült
        final double adaptiveIconSize = constraints.maxHeight < 120 ? 28 : 36;
        final double adaptiveFontSize = constraints.maxHeight < 120 ? 14 : 16;

        return Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // İkon Alanı
            Icon(icon, size: adaptiveIconSize, color: color),
            const SizedBox(height: 12),

            // Başlık Alanı - Sığmazsa fontu küçültür
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                title,
                style: AppFonts.firaCode(
                  fontSize: adaptiveFontSize,
                  fontWeight: FontWeight.bold,
                  color: Catppuccin.text,
                ),
                textAlign: TextAlign.center,
              ),
            ),

            const SizedBox(height: 8),

            // Açıklama Alanı - Esnek yapı
            Flexible(
              child: Text(
                desc,
                textAlign: TextAlign.center,
                style: AppFonts.firaCode(
                  color: Catppuccin.subtext0,
                  fontSize: 12,
                ),
                // Ekran daraldığında metni 3 satırda keser, taşmayı önler
                maxLines: constraints.maxHeight < 150 ? 2 : 4,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        );
      },
    );
  }
}
