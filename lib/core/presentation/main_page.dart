import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tayfunucuncu/core/theme/catppuccin.dart';
import 'package:tayfunucuncu/features/about/presentation/about_section.dart';
import 'package:tayfunucuncu/features/contact/presentation/contact_section.dart';
import 'package:tayfunucuncu/features/home/presentation/home_section.dart';
import 'package:tayfunucuncu/features/portfolio/presentation/portfolio_view.dart';
import 'package:tayfunucuncu/features/services/presentation/services_section.dart';
import 'package:tayfunucuncu/widgets/custom_navbar.dart';

final activeSectionProvider = StateProvider<int>((ref) => 0);

class MainPage extends ConsumerStatefulWidget {
  const MainPage({super.key});

  @override
  ConsumerState<MainPage> createState() => _MainPageState();
}

class _MainPageState extends ConsumerState<MainPage> {
  late PageController _pageController;
  bool _isScrolling = false;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  Future<void> _scrollToSection(int index) async {
    if (_isScrolling) return;

    setState(() => _isScrolling = true);

    ref.read(activeSectionProvider.notifier).state = index;

    await _pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 700),
      curve: Curves.easeInOutQuart,
    );

    setState(() => _isScrolling = false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Catppuccin.base,
      body: Listener(
        onPointerSignal: (pointerSignal) {
          if (pointerSignal is PointerScrollEvent && !_isScrolling) {
            if (pointerSignal.scrollDelta.dy > 15) {
              _scrollToSection(ref.read(activeSectionProvider) + 1);
            } else if (pointerSignal.scrollDelta.dy < -15) {
              _scrollToSection(ref.read(activeSectionProvider) - 1);
            }
          }
        },
        child: Stack(
          children: [
            PageView(
              controller: _pageController,
              scrollDirection: Axis.vertical,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                HomeSection(
                  onProjectsTap: () => _scrollToSection(2),
                  onContactTap: () => _scrollToSection(3),
                ),
                const AboutSection(),
                const PortfolioView(),
                const ServicesSection(),
                const ContactSection(),
              ],
            ),

            Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                height: 80,
                child: CustomNavbar(
                  currentIndex: ref.watch(activeSectionProvider),
                  onNavTap: (index) => _scrollToSection(index),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
