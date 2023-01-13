import 'package:flutter/material.dart';

class OTPContainer extends StatefulWidget {
  const OTPContainer({super.key});

  @override
  State<OTPContainer> createState() => _OTPContainerState();
}

class _OTPContainerState extends State<OTPContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 70,
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
