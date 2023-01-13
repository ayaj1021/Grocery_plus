import 'package:flutter/material.dart';

class SplashPhoneNoOTP extends StatefulWidget {
  const SplashPhoneNoOTP({super.key});

  @override
  State<SplashPhoneNoOTP> createState() => _SplashPhoneNoOTPState();
}

class _SplashPhoneNoOTPState extends State<SplashPhoneNoOTP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('OTP page')],
        ),
      ),
    );
  }
}
