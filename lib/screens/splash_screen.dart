import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/images.dart';
import 'package:flutter_application_1/screens/news_screen.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () => Navigator.pushReplacement(context, MaterialPageRoute(builder:(context) => NewsScreen(),)));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe5e5e5),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(Images.splashScreen),
            const SizedBox(
              height: 43,
            ),
             const Text('Новости',
            style: TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontFamily: 'Montserrat'
            ),)
          ],
        ),
      ),
    );
  }
}