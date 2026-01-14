import 'package:flutter/material.dart';
import 'package:tayfunucuncu/features/portfolio/presentation/widgets/portfolio_hero.dart';
import 'package:tayfunucuncu/features/portfolio/presentation/widgets/project_list.dart';

class PortfolioViewBody extends StatelessWidget {
  const PortfolioViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 40,
      children: [PortfolioHero(), ProjectList()],
    );
  }
}
