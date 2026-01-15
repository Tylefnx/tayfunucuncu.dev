import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Scroll state for a section
class SectionScrollData {
  final bool isAtTop;
  final bool isAtBottom;
  final ScrollController controller;

  SectionScrollData({
    required this.isAtTop,
    required this.isAtBottom,
    required this.controller,
  });
}

// Provider for section scroll states
final sectionScrollProvider = Provider.family<SectionScrollData, int>((
  ref,
  index,
) {
  final controller = ScrollController();
  bool isAtTop = true;
  bool isAtBottom = false;

  controller.addListener(() {
    if (!controller.hasClients) return;

    final position = controller.position;
    isAtTop = position.pixels <= 0;
    isAtBottom = position.pixels >= position.maxScrollExtent - 1;
  });

  return SectionScrollData(
    isAtTop: isAtTop,
    isAtBottom: isAtBottom,
    controller: controller,
  );
});

class SmartScrollableSection extends ConsumerStatefulWidget {
  final int index;
  final Widget child;
  final EdgeInsetsGeometry? padding;
  final VoidCallback? onReachedBottom;
  final VoidCallback? onReachedTop;

  const SmartScrollableSection({
    super.key,
    required this.index,
    required this.child,
    this.padding,
    this.onReachedBottom,
    this.onReachedTop,
  });

  @override
  ConsumerState<SmartScrollableSection> createState() =>
      _SmartScrollableSectionState();
}

class _SmartScrollableSectionState
    extends ConsumerState<SmartScrollableSection> {
  late final ScrollController _scrollController;
  bool _isHandlingScroll = false;

  @override
  void initState() {
    super.initState();
    final sectionData = ref.read(sectionScrollProvider(widget.index));
    _scrollController = sectionData.controller;
  }

  Future<void> _handleVerticalDrag(DragUpdateDetails details) async {
    if (_isHandlingScroll) return;

    final delta = details.primaryDelta ?? 0;
    if (delta.abs() < 10) return; // Ignore small movements

    _isHandlingScroll = true;

    if (!_scrollController.hasClients) {
      _isHandlingScroll = false;
      return;
    }

    final position = _scrollController.position;
    final isAtTop = position.pixels <= 0;
    final isAtBottom = position.pixels >= position.maxScrollExtent - 1;

    // Scroll down
    if (delta > 0) {
      if (!isAtBottom) {
        // Scroll within current section
        final targetPosition = (position.pixels + delta * 2).clamp(
          0.0,
          position.maxScrollExtent,
        );
        await _scrollController.animateTo(
          targetPosition,
          duration: const Duration(milliseconds: 100),
          curve: Curves.easeOut,
        );
      } else {
        // Reached bottom, trigger callback
        widget.onReachedBottom?.call();
      }
    }
    // Scroll up
    else if (delta < 0) {
      if (!isAtTop) {
        // Scroll within current section
        final targetPosition = (position.pixels + delta * 2).clamp(
          0.0,
          position.maxScrollExtent,
        );
        await _scrollController.animateTo(
          targetPosition,
          duration: const Duration(milliseconds: 100),
          curve: Curves.easeOut,
        );
      } else {
        // Reached top, trigger callback
        widget.onReachedTop?.call();
      }
    }

    _isHandlingScroll = false;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onVerticalDragUpdate: _handleVerticalDrag,
      child: SingleChildScrollView(
        controller: _scrollController,
        physics:
            const NeverScrollableScrollPhysics(), // Disable default scrolling
        child: Padding(
          padding: widget.padding ?? EdgeInsets.zero,
          child: widget.child,
        ),
      ),
    );
  }

  @override
  void dispose() {
    // Don't dispose here - provider manages the controller lifecycle
    super.dispose();
  }
}
