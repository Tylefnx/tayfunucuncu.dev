import 'package:flutter/material.dart';
import '../../../../core/constants/app_layout.dart';
import '../../../../core/theme/catppuccin.dart';
import '../../../../i18n/strings.g.dart';
import '../../domain/service_item.dart';
import 'service_card.dart';

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

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 400,
        childAspectRatio: 1.6,
        crossAxisSpacing: AppLayout.spacingMedium,
        mainAxisSpacing: AppLayout.spacingMedium,
      ),
      itemCount: services.length,
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
  }
}
