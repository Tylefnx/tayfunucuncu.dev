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
import 'package:tayfunucuncu/widgets/custom_drawer.dart';
import 'package:tayfunucuncu/widgets/custom_navbar.dart';

final activeSectionProvider = StateProvider<int>((ref) => 0);

class MainPage extends ConsumerStatefulWidget {
  const MainPage({super.key});

  @override
  ConsumerState<MainPage> createState() => _MainPageState();
}

// main_page.dart
class _MainPageState extends ConsumerState<MainPage> {
  late PageController _pageController;
  bool _isScrolling = false;

  // Controller'ları burada tanımlıyoruz
  final Map<int, ScrollController> _sectionControllers = {
    0: ScrollController(),
    1: ScrollController(),
    2: ScrollController(),
    3: ScrollController(),
    4: ScrollController(),
  };

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    _sectionControllers.forEach((_, controller) => controller.dispose());
    super.dispose();
  }

  void _onPointerSignal(PointerSignalEvent event) {
    if (event is PointerScrollEvent && !_isScrolling) {
      final double delta = event.scrollDelta.dy;
      final int currentIndex = ref.read(activeSectionProvider);

      if (delta.abs() < 30) return;

      // Controller'a güvenli erişim
      final ScrollController? innerController =
          _sectionControllers[currentIndex];

      // hasClients: Controller bir widget'a (SingleChildScrollView) bağlı mı?
      if (innerController != null && innerController.hasClients) {
        final pos = innerController.position;

        // Aşağı kaydırma ve içerik bitmediyse
        if (delta > 0 && pos.pixels < pos.maxScrollExtent) {
          innerController.jumpTo(
            (pos.pixels + delta).clamp(0, pos.maxScrollExtent),
          );
          return;
        }
        // Yukarı kaydırma ve en tepede değilsek
        if (delta < 0 && pos.pixels > 0) {
          innerController.jumpTo(
            (pos.pixels + delta).clamp(0, pos.maxScrollExtent),
          );
          return;
        }
      }

      // İç scroll yoksa veya bittiyse sayfa değiştir
      if (delta > 50) {
        _scrollToSection(currentIndex + 1);
      } else if (delta < -50) {
        _scrollToSection(currentIndex - 1);
      }
    }
  }

  Future<void> _scrollToSection(int index) async {
    if (_isScrolling || index < 0 || index > 4) return;
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
    final activeIdx = ref.watch(activeSectionProvider);

    return Scaffold(
      endDrawer: CustomDrawer(
        currentIndex: activeIdx,
        onNavTap: (i) => _scrollToSection(i),
      ),
      backgroundColor: Catppuccin.base,
      body: Listener(
        onPointerSignal: _onPointerSignal,
        child: Stack(
          children: [
            PageView(
              controller: _pageController,
              scrollDirection: Axis.vertical,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                HomeSection(
                  scrollController: _sectionControllers[0]!,
                  onProjectsTap: () => _scrollToSection(2),
                  onContactTap: () => _scrollToSection(4),
                ),
                AboutSection(scrollController: _sectionControllers[1]!),
                PortfolioView(scrollController: _sectionControllers[2]!),
                ServicesSection(scrollController: _sectionControllers[3]!),
                ContactSection(scrollController: _sectionControllers[4]!),
              ],
            ),
            Align(
              alignment: Alignment.topCenter,
              child: CustomNavbar(
                currentIndex: activeIdx,
                onNavTap: (index) => _scrollToSection(index),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
