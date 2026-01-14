import 'package:flutter/material.dart';
import 'package:tayfunucuncu/core/presentation/elegant_splash_screen.dart';
import 'package:tayfunucuncu/core/presentation/main_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true, brightness: Brightness.dark),
      home: const SplashScreen(nextScreen: MainPage()),
    );
  }
}
