import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:biometric_app/login/login_view.dart';
import 'package:biometric_app/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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