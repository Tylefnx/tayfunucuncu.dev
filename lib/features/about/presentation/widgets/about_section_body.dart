import 'package:flutter/material.dart';
import 'package:tayfunucuncu/core/constants/app_layout.dart';
import 'package:tayfunucuncu/core/theme/catppuccin.dart';
import 'package:tayfunucuncu/features/about/domain/about_item.dart';
import 'package:tayfunucuncu/features/about/presentation/widgets/about_detail_item.dart';
import 'package:tayfunucuncu/features/about/presentation/widgets/about_header.dart';
import 'package:tayfunucuncu/i18n/strings.g.dart';

class AboutSectionBody extends StatelessWidget {
  const AboutSectionBody({super.key});

  @override
  Widget build(BuildContext context) {
    final List<AboutItem> details = [
      AboutItem(title: t.about.mission.title, content: t.about.mission.content),
      AboutItem(title: t.about.vision.title, content: t.about.vision.content),
    ];

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      // Column spacing kullanarak SizedBox'ları azalttık
      spacing: AppLayout.spacingLarge,
      children: [
        const AboutHeader(),

        const Divider(color: Catppuccin.surface1),

        // Liste için ListView.separated yerine Column(spacing) daha performanslıdır (shrinkwrap gerektirmez)
        Column(
          spacing: AppLayout.spacingLarge,
          children: details.map((item) => AboutDetailItem(item: item)).toList(),
        ),
      ],
    );
  }
}
