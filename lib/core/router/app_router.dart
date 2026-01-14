import 'package:go_router/go_router.dart';
import 'package:tayfunucuncu/core/presentation/main_page.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [GoRoute(path: '/', builder: (context, state) => const MainPage())],
);
