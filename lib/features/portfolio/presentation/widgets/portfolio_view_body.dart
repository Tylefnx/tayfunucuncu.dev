import 'package:flutter/material.dart';
import 'package:tayfunucuncu/features/portfolio/presentation/widgets/portfolio_hero.dart';
import 'package:tayfunucuncu/features/portfolio/presentation/widgets/project_list.dart';

class PortfolioViewBody extends StatelessWidget {
  const PortfolioViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 40,
      children: [
        const PortfolioHero(),
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 939.3),
          child: const ProjectList(),
        ),
      ],
    );
  }
}
