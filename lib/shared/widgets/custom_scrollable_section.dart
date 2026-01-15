import 'package:flutter/material.dart';

class CustomScrollableSection extends StatelessWidget {
  final List<Widget> slivers;
  final ScrollController? controller;
  final ScrollPhysics? physics;
  final EdgeInsetsGeometry? padding;

  const CustomScrollableSection({
    super.key,
    required this.slivers,
    this.controller,
    this.physics,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: const MaterialScrollBehavior().copyWith(scrollbars: false),
      child: CustomScrollView(
        controller: controller,
        physics: physics,
        slivers: [
          if (padding != null) SliverPadding(padding: padding!) else ...slivers,
        ],
      ),
    );
  }
}
