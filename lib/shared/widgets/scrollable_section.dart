import 'package:flutter/material.dart';

class ScrollableSection extends StatelessWidget {
  final Widget child;
  final ScrollController? controller;
  final EdgeInsetsGeometry? padding;
  final ScrollPhysics? physics;

  const ScrollableSection({
    super.key,
    required this.child,
    this.controller,
    this.padding,
    this.physics,
  });

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: const MaterialScrollBehavior().copyWith(scrollbars: false),
      child: SingleChildScrollView(
        controller: controller,
        physics: physics,
        padding: padding ?? EdgeInsets.zero,
        child: child,
      ),
    );
  }
}