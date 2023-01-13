import 'dart:async';

import 'package:flutter/material.dart';
import 'package:grocery_plus_app_ui/Screens/Authentication/Sign_in/phone_no_login_screen.dart';
import 'package:grocery_plus_app_ui/Styles/app_styles.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), (() {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => const PhoneNumberLogin()));
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                  gradient: const LinearGradient(colors: [
                    Colors.white54,
                    Color(0xffefe9e9),
                    Color(0xffdfebed),
                    Color(0xfff4d4d0),
                  ]),
                  border: Border.all(color: Colors.transparent)),
            ),
            const SizedBox(height: 140),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'images/Splashscreenimage.png',
                  height: 120,
                  width: 120,
                ),
                const SizedBox(height: 15),
                Text(
                  'Grocery Plus',
                  style: Styles.headLineStyle1,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
