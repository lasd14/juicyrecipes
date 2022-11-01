import 'package:flutter/material.dart';
import 'package:juicy_recipes/presentation/pages/pages.dart';
import 'package:juicy_recipes/presentation/themes/principal_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'JuicyRecipes',
      debugShowCheckedModeBanner: false,
      theme: PrincipalTheme.lightTheme,
      initialRoute: 'onboarding',
      routes: {
        'onboarding': (_) => const OnBoardingPage(),
        'register'  : (_) => const RegisterPage(),
        'login'     : (_) => const LoginPage(),
        'menu'      : (_) => const MenuPage(),
      },
    );
  }
}