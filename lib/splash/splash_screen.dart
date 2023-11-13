import 'package:biometric_app/home/home_view.dart';
import 'package:biometric_app/login/login_view.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 1500));
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginView()));
  }

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.fingerprint_rounded,
      size: 100,
      color: Colors.blue,
    );
    // Scaffold(
    //   body: Center(
    //     child: Container(
    //       child: Icon(
    //         Icons.fingerprint_rounded,
    //         size: 80,
    //         color: Colors.blue,
    //       ),
    //       height: MediaQuery.of(context).size.height,
    //       width: MediaQuery.of(context).size.width,
          // decoration: BoxDecoration(
          //   image: DecorationImage(
          //     image: AssetImage('assets/images/splash.jpg'),
          //     fit: BoxFit.cover
          //   )
          // ),
          // child: Text(
          //   "Splash Screen",
          //   style: TextStyle(
          //     fontSize: 24,
          //     fontWeight: FontWeight.bold
          //   ),
    //       // ),
    //     ),
    //   ),
    // );
  }
}