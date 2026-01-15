import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tayfunucuncu/core/theme/app_fonts.dart';
import 'package:tayfunucuncu/core/theme/catppuccin.dart';
import 'package:tayfunucuncu/i18n/strings.g.dart';

class CustomNavbar extends StatelessWidget implements PreferredSizeWidget {
  final int currentIndex;
  final Function(int) onNavTap;

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
      color: Catppuccin.base.withValues(alpha: 0.95),
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 16,
      ), // Padding biraz daraltıldı
      child: LayoutBuilder(
        builder: (context, constraints) {
          // 800px altı ekranlarda "Mobil Modu"na geçiyoruz
          final bool isMobile = constraints.maxWidth < 800;

          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Logo ve Başlık
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset('assets/icons/T512.svg', height: 32),
                  const SizedBox(width: 12),
                  Text(
                    t.app.title,
                    style: AppFonts.firaCode(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Catppuccin.green,
                    ),
                  ),
                ],
              ),

              // Responsive Menü Elemanları
              // CustomNavbar içindeki isMobile kontrolünün altındaki IconButton:
              if (isMobile)
                Builder(
                  // Builder ekleyerek doğru context'i yakalıyoruz
                  builder: (context) => IconButton(
                    icon: const Icon(
                      Icons.menu_rounded,
                      color: Catppuccin.text,
                      size: 28,
                    ),
                    onPressed: () {
                      Scaffold.of(context).openEndDrawer();
                    },
                  ),
                )
              else
                _NavButtons(currentIndex: currentIndex, onNavTap: onNavTap),
            ],
          );
        },
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
    // Nav buton listesi
    final List<String> navItems = [
      t.nav.home,
      t.nav.about,
      t.nav.portfolio,
      t.nav.services,
      t.nav.contact,
    ];

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(navItems.length, (index) {
        return Padding(
          padding: const EdgeInsets.only(left: 8), // Butonlar arası nefes payı
          child: _NavButton(
            text: navItems[index],
            isActive: currentIndex == index,
            onTap: () => onNavTap(index),
          ),
        );
      }),
    );
  }
}

class _NavButton extends StatelessWidget {
  final String text;
  final bool isActive;
  final VoidCallback onTap;

  const _NavButton({
    required this.text,
    required this.isActive,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: isActive ? Catppuccin.green : Colors.transparent,
            width: 2,
          ),
        ),
      ),
      child: TextButton(
        onPressed: onTap,
        style: TextButton.styleFrom(
          foregroundColor: isActive ? Catppuccin.green : Catppuccin.text,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          textStyle: AppFonts.firaCode(
            fontSize: 14,
            fontWeight: isActive ? FontWeight.bold : FontWeight.w500,
          ),
        ),
        child: Text(text),
      ),
    );
  }
}
