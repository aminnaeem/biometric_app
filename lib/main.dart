import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:biometric_app/home/home_view.dart';
import 'package:biometric_app/login/login_view.dart';
import 'package:biometric_app/splash/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        duration: 1500,
        splashTransition: SplashTransition.fadeTransition,
        splash: SplashScreen(),
        nextScreen: LoginView()
      ),
    );
  }
}