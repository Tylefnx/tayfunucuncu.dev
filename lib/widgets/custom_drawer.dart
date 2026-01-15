import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tayfunucuncu/core/theme/app_fonts.dart';
import 'package:tayfunucuncu/core/theme/catppuccin.dart';
import 'package:tayfunucuncu/i18n/strings.g.dart';

class CustomDrawer extends StatelessWidget {
  final int currentIndex;
  final Function(int) onNavTap;

  const CustomDrawer({
    super.key,
    required this.currentIndex,
    required this.onNavTap,
  });

  @override
  Widget build(BuildContext context) {
    final List<String> navItems = [
      t.nav.home,
      t.nav.about,
      t.nav.portfolio,
      t.nav.services,
      t.nav.contact,
    ];

    return Drawer(
      backgroundColor: Catppuccin.mantle,
      elevation: 0,
      child: SafeArea(
        child: Column(
          children: [
            // Kapatma Butonu Kısmı
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: IconButton(
                  icon: const Icon(Icons.close_rounded, color: Catppuccin.text),
                  onPressed: () => Navigator.pop(context),
                ),
              ),
            ),

            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                itemCount: navItems.length,
                itemBuilder: (context, index) {
                  final bool isActive = currentIndex == index;

                  return TweenAnimationBuilder<double>(
                    tween: Tween(begin: 0.0, end: 1.0),
                    duration: Duration(
                      milliseconds: 400 + (index * 100),
                    ), // Her öğe 100ms sonra başlar
                    curve: Curves.easeOutCubic,
                    builder: (context, value, child) {
                      return Opacity(
                        opacity: value,
                        child: Transform.translate(
                          offset: Offset(
                            0,
                            20 * (1 - value),
                          ), // Aşağıdan yukarı süzülme
                          child: child,
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: ListTile(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        tileColor: isActive
                            ? Catppuccin.green.withValues(alpha: 0.1)
                            : Colors.transparent,
                        title: Text(
                          navItems[index],
                          style: AppFonts.firaCode(
                            fontSize: 18,
                            color: isActive
                                ? Catppuccin.green
                                : Catppuccin.text,
                            fontWeight: isActive
                                ? FontWeight.bold
                                : FontWeight.normal,
                          ),
                        ),
                        onTap: () => onNavTap(index),
                      ),
                    ),
                  );
                },
              ),
            ),

            // Alt Bilgi
            Padding(
              padding: const EdgeInsets.all(32),
              child: Opacity(
                opacity: 0.5,
                child: SvgPicture.asset(
                  'assets/icons/T512.svg',
                  height: 40,
                  colorFilter: const ColorFilter.mode(
                    Catppuccin.overlay1,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
