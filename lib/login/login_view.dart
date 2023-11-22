import 'package:biometric_app/login/login_screen.dart';
import 'package:biometric_app/register/registeration_button.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RegisterationButton(),
            GestureDetector(
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: ((context) => LoginScreen()))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2,
                        color: Colors.blue
                      ),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: const Icon(
                      Icons.fingerprint_rounded,
                      color: Colors.blue,
                      size: 60,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Text(
                      'Login with Fingerprint',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}