import 'package:flutter/material.dart';
import 'package:task2/screens/home/home_screen.dart';
import 'package:task2/screens/splash.dart';
import 'package:task2/screens/tabs/android_tab.dart';
import 'package:task2/screens/tabs/ios_tab.dart';
import 'package:task2/screens/tabs/full_stack_tab.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  /// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      routes:
      {
        SplashScreen.routeName:(_)=> const SplashScreen(),
        HomeScreen.routeName:(_)=> HomeScreen(),
        AndroidScreen.routeName:(_)=> const AndroidScreen(),
        IosScreen.routeName:(_)=> const IosScreen(),
        FullStackScreen.routeName:(_)=> const FullStackScreen(),
      },
      initialRoute: HomeScreen.routeName,
    );
  }
}

