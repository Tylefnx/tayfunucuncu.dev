import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tayfunucuncu/core/theme/app_fonts.dart';
import 'package:tayfunucuncu/core/theme/catppuccin.dart';

class SplashScreen extends HookConsumerWidget {
  final Widget nextScreen;
  const SplashScreen({super.key, required this.nextScreen});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenSize = MediaQuery.of(context).size;
    final double initialLogoSize = screenSize.width < 512
        ? screenSize.width * 0.6
        : 512.0;
    const double targetLogoSize = 200.0;

    final mainController = useAnimationController(
      duration: const Duration(milliseconds: 2000),
    );

    final dotController = useAnimationController(
      duration: const Duration(milliseconds: 800),
    )..repeat();

    final breathingController = useAnimationController(
      duration: const Duration(seconds: 2),
    )..repeat(reverse: true);

    final logoSizeAnimation = useAnimation(
      Tween<double>(begin: initialLogoSize, end: targetLogoSize).animate(
        CurvedAnimation(
          parent: mainController,
          curve: const Interval(0.0, 0.6, curve: Curves.easeInOutCubic),
        ),
      ),
    );

    final logoSlideUp = useAnimation(
      Tween<Alignment>(
        begin: Alignment.center,
        end: const Alignment(0, -0.3),
      ).animate(
        CurvedAnimation(
          parent: mainController,
          curve: const Interval(0.0, 0.6, curve: Curves.easeInOutCubic),
        ),
      ),
    );

    final textFadeIn = useAnimation(
      Tween<double>(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(
          parent: mainController,
          curve: const Interval(0.5, 1.0, curve: Curves.easeOut),
        ),
      ),
    );

    final blurFadeIn = useAnimation(
      Tween<double>(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(
          parent: mainController,
          curve: const Interval(0.2, 0.8, curve: Curves.easeIn),
        ),
      ),
    );

    final breathingScale = useAnimation(
      Tween<double>(begin: 0.98, end: 1.02).animate(
        CurvedAnimation(parent: breathingController, curve: Curves.easeInOut),
      ),
    );

    useEffect(() {
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

      FlutterNativeSplash.remove();

      mainController.forward();

      Timer(const Duration(milliseconds: 2300), () {
        if (context.mounted) {
          Navigator.of(context).pushReplacement(
            PageRouteBuilder(
              pageBuilder: (_, __, ___) => nextScreen,
              transitionDuration: const Duration(milliseconds: 800),
              transitionsBuilder: (_, a, __, c) =>
                  FadeTransition(opacity: a, child: c),
            ),
          );
        }
      });
      return null;
    }, []);

    return Scaffold(
      backgroundColor: Catppuccin.base,
      body: Stack(
        children: [
          Opacity(
            opacity: blurFadeIn,
            child: const Stack(
              children: [
                _PositionedBlur(top: -100, left: -50, color: Catppuccin.blue),
                _PositionedBlur(
                  bottom: -100,
                  right: -50,
                  color: Catppuccin.mauve,
                ),
              ],
            ),
          ),

          Align(
            alignment: logoSlideUp,
            child: Transform.scale(
              scale: breathingScale,
              child: SizedBox(
                width: logoSizeAnimation,
                height: logoSizeAnimation,
                child: SvgPicture.asset('assets/icons/T512.svg'),
              ),
            ),
          ),

          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.35,
            left: 0,
            right: 0,
            child: Opacity(
              opacity: textFadeIn,
              child: Center(
                child: _AnimatedLoadingText(controller: dotController),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _AnimatedLoadingText extends StatelessWidget {
  final AnimationController controller;
  const _AnimatedLoadingText({required this.controller});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        final dots = (controller.value * 4).floor();
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "SYSTEM INITIALIZING${"." * dots}${" " * (3 - dots)}",
              style: AppFonts.firaCode(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Catppuccin.green.withOpacity(0.9),
              ),
            ),
            const SizedBox(height: 12),
            Container(
              width: 120,
              height: 2,
              decoration: BoxDecoration(
                color: Catppuccin.surface1.withOpacity(0.3),
                borderRadius: BorderRadius.circular(2),
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  width: 120 * ((dots + 1) / 4),
                  height: 2,
                  decoration: BoxDecoration(
                    color: Catppuccin.green,
                    borderRadius: BorderRadius.circular(2),
                    boxShadow: [
                      BoxShadow(
                        color: Catppuccin.green.withOpacity(0.5),
                        blurRadius: 6,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
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
        width: 400,
        height: 400,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color.withOpacity(0.05),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 80, sigmaY: 80),
          child: const SizedBox(),
        ),
      ),
    );
  }
}
