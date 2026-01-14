import 'package:flutter/material.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

class SectionWrapper extends StatelessWidget {
  final int index;
  final AutoScrollController controller;
  final Widget child;

  const SectionWrapper({
    super.key,
    required this.index,
    required this.controller,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return AutoScrollTag(
      key: ValueKey(index),
      controller: controller,
      index: index,
      child: child,
    );
  }
}
