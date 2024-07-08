import 'dart:async';

import 'package:flutter/material.dart';
import 'package:watsapp/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer( Duration(seconds: 3) , () {

      Navigator.push(context, MaterialPageRoute(builder: (context) =>  HomeScreen() ));
     });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/png/Splash_Screen.png"),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
