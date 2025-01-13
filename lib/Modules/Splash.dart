import 'package:flutter/material.dart';
import 'package:restaurant/Modules/Welcome Screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 5),(){
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context)=> WelcomeScreen()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      body: Center(
        child: Image.asset('assets/images/splash.png',),
      ),
    );
  }
}
