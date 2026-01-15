import 'package:flutter/material.dart';
import 'package:tayfunucuncu/core/theme/catppuccin.dart';
import 'package:tayfunucuncu/features/portfolio/presentation/widgets/portfolio_view_body.dart';

class PortfolioView extends StatelessWidget {
  final ScrollController scrollController;
  const PortfolioView({super.key, required this.scrollController});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Catppuccin.base,
      child: Center(
        child: SingleChildScrollView(
          controller: scrollController,
          // Üstten navbar payı, alttan scroll payı
          padding: const EdgeInsets.only(
            top: 100,
            left: 24,
            right: 24,
            bottom: 160,
          ),
          child: const PortfolioViewBody(),
        ),
      ),
    );
  }
}
