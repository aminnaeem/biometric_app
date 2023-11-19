import 'package:biometric_app/home/home_view.dart';
import 'package:biometric_app/widgets/custom_textfields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';

class LoginScreen extends StatefulWidget {

  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController usernameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  late final LocalAuthentication auth;

  bool _supportState = false;

  @override
  void initState() {
    super.initState();
    auth = LocalAuthentication();
    auth.isDeviceSupported().then(
     (bool isSupported) => setState(() {
      _supportState = isSupported;
     }) 
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Text(    
                  'Login with\nFingerprint',
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
                      CustomTextFields(textController: usernameController, lblText: 'Username', hntText: 'Enter your Username', sfxIcon: Icons.person, obsText: false,),
                      CustomTextFields(textController: passwordController, lblText: 'Password', hntText: 'Enter your Password', sfxIcon: Icons.password, obsText: true,),
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
                    onPressed: _authenticate,
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.transparent),
                      shadowColor: MaterialStateProperty.all(Colors.transparent),
                      side: MaterialStateProperty.all(const BorderSide(
                        color: Colors.blue
                      ))
                    ),
                    child: const Text(
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

  Future _authenticate() async {
    try {
      bool authenticated = await auth.authenticate(
        localizedReason: 'Login via Biometric',
        options: const AuthenticationOptions(
          stickyAuth: true,
          biometricOnly: true
        ),
      );
      if (authenticated) {
        Navigator.push(context as BuildContext, MaterialPageRoute(builder: (context) => HomeView()));
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Center(child: Text("Login Successful"))));
      }
      else {
        
      }
    } on PlatformException catch (e) {
      print(e);
    }
  }

  Future _getAvailableBiometrics () async {
    List availableBiometrics =
      await auth.getAvailableBiometrics();

    print("List of available Biometrics : $availableBiometrics");

    if (!mounted) {
      return;
    }
    setState(() {
      
    });

  }
}

