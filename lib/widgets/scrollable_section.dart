import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tayfunucuncu/widgets/smart_scrollable_section.dart';

part 'scrollable_section.g.dart';

@riverpod
class CurrentSectionNotifier extends _$CurrentSectionNotifier {
  @override
  int build() => 0;

  void goToSection(int section) {
    state = section;
  }
}

class ScrollableSection extends ConsumerWidget {
  final int index;
  final Widget child;
  final EdgeInsetsGeometry? padding;

  const ScrollableSection({
    super.key,
    required this.index,
    required this.child,
    this.padding,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentSection = ref.watch(currentSectionProvider);

    return SmartScrollableSection(
      index: index,
      padding: padding,
      onReachedBottom: () {
        // Handle reaching bottom of section
        if (currentSection < 4) {
          ref
              .read(currentSectionProvider.notifier)
              .goToSection(currentSection + 1);
        }
      },
      onReachedTop: () {
        // Handle reaching top of section
        if (currentSection > 0) {
          ref
              .read(currentSectionProvider.notifier)
              .goToSection(currentSection - 1);
        }
      },
      child: child,
    );
  }
}

enum ScrollDirection { up, down }
