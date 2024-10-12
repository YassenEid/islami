import 'package:flutter/material.dart';
import 'package:task2/screens/home/home_screen.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = "splash";

  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2),() {
      Navigator.pushReplacementNamed(context, HomeScreen.routeName);
    },
    );
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'images/splash_screen.png',
            ),
            fit: BoxFit.cover
          ),
        ),
      ),
    );
  }
}
