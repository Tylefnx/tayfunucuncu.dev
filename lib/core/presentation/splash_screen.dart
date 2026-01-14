import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AnimatedSplashScreen extends HookConsumerWidget {
  final Widget nextScreen;
  final Duration duration;

  const AnimatedSplashScreen({
    super.key,
    required this.nextScreen,
    this.duration = const Duration(seconds: 3),
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(() {
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
      SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          systemNavigationBarColor: Colors.transparent,
        ),
      );
      return null;
    }, []);

    final controller = useAnimationController(
      duration: const Duration(milliseconds: 2000),
    );

    final double opacity = useAnimation(
      CurvedAnimation(
        parent: controller,
        curve: const Interval(0.0, 0.4, curve: Curves.easeIn),
      ),
    );

    final double scale = useAnimation(
      CurvedAnimation(parent: controller, curve: const Interval(0.2, 1.0)),
    );

    useEffect(() {
      controller.forward();
      Future.delayed(duration, () {
        if (context.mounted) {
          Navigator.of(context).pushReplacement(
            PageRouteBuilder(
              pageBuilder: (_, __, ___) => nextScreen,
              transitionDuration: const Duration(milliseconds: 1000),
              transitionsBuilder: (_, a, __, c) =>
                  FadeTransition(opacity: a, child: c),
            ),
          );
        }
      });
      return null;
    }, []);

    return Scaffold(
      backgroundColor: const Color(0xFF13131D),
      body: Stack(
        alignment: Alignment.center,
        children: [
          const _PositionedBlur(top: -100, left: -50, color: Colors.blueAccent),
          const _PositionedBlur(
            bottom: -100,
            right: -50,
            color: Colors.purpleAccent,
          ),

          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Transform.scale(
                  scale: scale,
                  child: Opacity(
                    opacity: opacity,
                    child: Container(
                      alignment: Alignment.center,
                      child: SvgPicture.asset('assets/icons/T512.svg'),
                    ),
                  ),
                ),
                const SizedBox(height: 100),
                const _MinimalLoadingLine(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _MinimalLoadingLine extends HookWidget {
  const _MinimalLoadingLine();

  @override
  Widget build(BuildContext context) {
    final controller = useAnimationController(
      duration: const Duration(seconds: 2),
    )..repeat();
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        return Container(
          width: 180,
          height: 2,
          color: Colors.white.withOpacity(0.05),
          child: Align(
            alignment: Alignment(controller.value * 2 - 1, 0),
            child: Container(
              width: 60,
              height: 2,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.transparent,
                    Colors.cyanAccent.withOpacity(0.6),
                    Colors.transparent,
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class _PositionedBlur extends StatelessWidget {
  final double? top;
  final double? left;
  final double? right;
  final double? bottom;
  final Color color;
  const _PositionedBlur({
    this.top,
    this.left,
    this.right,
    this.bottom,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: left,
      right: right,
      bottom: bottom,
      child: Container(
        width: 350,
        height: 350,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color.withOpacity(0.1),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 90, sigmaY: 90),
          child: const SizedBox(),
        ),
      ),
    );
  }
}
