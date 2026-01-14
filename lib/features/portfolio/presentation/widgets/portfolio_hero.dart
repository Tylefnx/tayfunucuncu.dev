import 'package:flutter/material.dart';
import 'package:tayfunucuncu/core/constants/app_layout.dart';
import 'package:tayfunucuncu/features/portfolio/presentation/widgets/portfolio_badge.dart';
import 'package:tayfunucuncu/features/portfolio/presentation/widgets/portfolio_title_group.dart';

class PortfolioHero extends StatelessWidget {
  const PortfolioHero({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      // Rozet ile başlık grubu arasındaki geniş boşluk
      spacing: AppLayout.spacingMedium,
      children: [
        PortfolioBadge(text: "Selected Works"),
        PortfolioTitleGroup(),
      ],
    );
  }
}
