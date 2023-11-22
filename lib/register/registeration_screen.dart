import 'package:biometric_app/widgets/custom_textfields.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class RegisterationScreen extends StatefulWidget {
  const RegisterationScreen({super.key});

  @override
  State<RegisterationScreen> createState() => _RegisterationScreenState();
}

class _RegisterationScreenState extends State<RegisterationScreen> {
  final nameController = TextEditingController();
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  bool isRegistered = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Text(    
                  'Register',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    color: Colors.blue
                  ),
                ),
              ),
              Form(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width*0.9,
                  child: Column(
                    children: [
                      CustomTextFields(textController: nameController, lblText: 'Full Name', hntText: 'Enter your Full Name', sfxIcon: Icons.face, obsText: false,),
                      CustomTextFields(textController: usernameController, lblText: 'Username', hntText: 'Enter the Username', sfxIcon: Icons.person, obsText: false,),
                      CustomTextFields(textController: emailController, lblText: 'Email', hntText: 'Enter your Email', sfxIcon: Icons.email_rounded, obsText: false,),
                      CustomTextFields(textController: passwordController, lblText: 'Password', hntText: 'Enter your Password', sfxIcon: Icons.key, obsText: true,),
                      CustomTextFields(textController: confirmPasswordController, lblText: 'Confirm Password', hntText: 'Confirm your Password', sfxIcon: Icons.key, obsText: true,),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  width: 100,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () async {
                      setState(() {
                        isRegistered = true;
                      });
                      try {
                        final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
                          email: emailController.text,
                          password: passwordController.text
                        );
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Center(child: Text('Registered Successfully')),
                          )
                        );
                        nameController.clear();
                        usernameController.clear();
                        emailController.clear();
                        passwordController.clear();
                        confirmPasswordController.clear();
                        setState(() {
                          isRegistered = false;
                        });
                      } on FirebaseAuthException catch (e) {
                        if (e.code == 'weak-password') {
                          print('The password provided is too weak');
                        } else if (e.code == 'email-already-in-use') {
                          print('The account already exist for that email');
                        }
                      } catch (e) {
                        print(e);
                      }
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.transparent),
                      shadowColor: MaterialStateProperty.all(Colors.transparent),
                      side: MaterialStateProperty.all(const BorderSide(
                        color: Colors.blue
                      ))
                    ),
                    child: isRegistered == true ? const Padding(
                      padding: EdgeInsets.all(4.0),
                      child: CircularProgressIndicator(),
                    ) : const Text(
                      'Next',
                      style: TextStyle(
                        color: Colors.blue
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}