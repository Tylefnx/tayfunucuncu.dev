import 'package:flutter/material.dart';
import 'package:tayfunucuncu/core/constants/app_layout.dart';
import 'package:tayfunucuncu/features/portfolio/presentation/widgets/portfolio_view_body.dart'; // Yeni import

class PortfolioView extends StatelessWidget {
  const PortfolioView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: AppLayout.sectionPadding,
      child: Center(child: PortfolioViewBody()),
    );
  }
}
