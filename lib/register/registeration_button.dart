import 'package:biometric_app/register/registeration_screen.dart';
import 'package:flutter/material.dart';

class RegisterationButton extends StatelessWidget {
  const RegisterationButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: GestureDetector(
        onTap: () => Navigator.push(context, MaterialPageRoute(builder: ((context) => RegisterationScreen()))),
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
                Icons.face,
                color: Colors.blue,
                size: 60,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Text(
                'Register Now',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}