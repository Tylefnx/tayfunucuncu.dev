import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tayfunucuncu/core/theme/app_fonts.dart';
import 'package:tayfunucuncu/core/theme/catppuccin.dart';
import 'package:tayfunucuncu/i18n/strings.g.dart';

class CustomNavbar extends StatelessWidget implements PreferredSizeWidget {
  final int currentIndex;
  final Function(int) onNavTap; // Tıklanınca ne olacağını dışarıdan alır

  const CustomNavbar({
    super.key,
    required this.currentIndex,
    required this.onNavTap,
  });

  @override
  Size get preferredSize => const Size.fromHeight(80);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Catppuccin.base.withOpacity(0.95),
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            spacing: 10,
            children: [
              SvgPicture.asset(
                'assets/icons/T512.svg', // Senin yüksek kaliteli logon
                height: 30, // Navbar 80px, logo 40px idealdir
              ),
              Text(
                t.app.title,
                style: AppFonts.firaCode(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Catppuccin.green,
                ),
              ),
            ],
          ),

          _NavButtons(currentIndex: currentIndex, onNavTap: onNavTap),
        ],
      ),
    );
  }
}

class _NavButtons extends StatelessWidget {
  const _NavButtons({required this.currentIndex, required this.onNavTap});

  final int currentIndex;
  final Function(int) onNavTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 15,
      children: [
        _NavButton(
          text: t.nav.home,
          index: 0,
          isActive: currentIndex == 0,
          onTap: () => onNavTap(0),
        ),
        _NavButton(
          text: t.nav.about,
          index: 1,
          isActive: currentIndex == 1,
          onTap: () => onNavTap(1),
        ),
        _NavButton(
          text: t.nav.portfolio,
          index: 2,
          isActive: currentIndex == 2,
          onTap: () => onNavTap(2),
        ),
        _NavButton(
          text: t.nav.services,
          index: 3,
          isActive: currentIndex == 3,
          onTap: () => onNavTap(3),
        ),
        _NavButton(
          text: t.nav.contact,
          index: 4,
          isActive: currentIndex == 4,
          onTap: () => onNavTap(4),
        ),
      ],
    );
  }
}

// Sadece bu dosyada kullanılan minik yardımcı widget
class _NavButton extends StatelessWidget {
  final String text;
  final int index;
  final bool isActive;
  final VoidCallback onTap;

  const _NavButton({
    required this.text,
    required this.index,
    required this.isActive,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      style: TextButton.styleFrom(
        foregroundColor: isActive ? Catppuccin.green : Catppuccin.text,
        textStyle: AppFonts.firaCode(
          fontSize: 14,
          fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
        ),
      ),
      child: Text(text),
    );
  }
}
