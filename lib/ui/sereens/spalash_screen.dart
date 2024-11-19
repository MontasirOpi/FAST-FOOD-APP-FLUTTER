import 'package:fast_foods_app/ui/sereens/sign_in_sign_up_screen.dart';
import 'package:fast_foods_app/ui/utils/assets_path.dart';
import 'package:flutter/material.dart';

class SpalashScreen extends StatefulWidget {
  const SpalashScreen({super.key});

  @override
  State<SpalashScreen> createState() => _SpalashScreenState();
}

class _SpalashScreenState extends State<SpalashScreen> {
      @override
  void initState() {
    super.initState();
    _moveToNextScreen();
  }
  Future<void> _moveToNextScreen() async {
    await Future.delayed(
      const Duration(seconds: 2),
    );
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const SignInSignUpScreen(),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:Center(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(AssetsPath.backgroundJpg),
              ],
            ),
          ),
        ),
      ) ,
    );
  }
}