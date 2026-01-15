import 'package:flutter/material.dart';
import 'package:tayfunucuncu/core/theme/catppuccin.dart';
import 'package:tayfunucuncu/features/services/domain/service_item.dart';
import 'package:tayfunucuncu/features/services/presentation/widgets/service_card.dart';
import 'package:tayfunucuncu/i18n/strings.g.dart';

class ServicesGrid extends StatelessWidget {
  const ServicesGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ServiceItem> services = [
      ServiceItem(
        title: t.services.items.mobile.title,
        desc: t.services.items.mobile.desc,
        icon: Icons.flutter_dash_rounded,
        color: Catppuccin.blue,
      ),
      ServiceItem(
        title: t.services.items.backend.title,
        desc: t.services.items.backend.desc,
        icon: Icons.storage_rounded,
        color: Catppuccin.green,
      ),
      ServiceItem(
        title: t.services.items.system.title,
        desc: t.services.items.system.desc,
        icon: Icons.terminal_rounded,
        color: Catppuccin.mauve,
      ),
      ServiceItem(
        title: t.services.items.security.title,
        desc: t.services.items.security.desc,
        icon: Icons.security_rounded,
        color: Catppuccin.yellow,
      ),
    ];

    return LayoutBuilder(
      builder: (context, constraints) {
        final double width = constraints.maxWidth;

        // Breakpoints
        int crossAxisCount = 2;
        double ratio = 1.4; // Desktop standart

        if (width < 650) {
          crossAxisCount = 1;
          ratio =
              2.4; // Mobilde kartlar yatayda ince/uzun (Pill şeklinde) olsun ki yer kaplamasın
        } else if (width > 950) {
          crossAxisCount = 2; // Tablet/Small Web
          ratio = 1.6;
        }

        return GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: services.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            crossAxisSpacing: 24,
            mainAxisSpacing: 24,
            childAspectRatio: ratio,
          ),
          itemBuilder: (context, index) {
            final service = services[index];
            return ServiceCard(
              title: service.title,
              desc: service.desc,
              icon: service.icon,
              color: service.color,
            );
          },
        );
      },
    );
  }
}
