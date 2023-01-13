import 'package:flutter/material.dart';

class AppRes {
  BuildContext context;
  static const designWidth = 393;
  static const designHeight = 852;
  static late double screenHeight;
  static late double screenWidth;

  AppRes(this.context) {
    MediaQueryData queryData = MediaQuery.of(context);
    screenHeight = queryData.size.height;
    screenWidth = queryData.size.width;
  }
}

double hp(double size) {
  return AppRes.screenHeight * (size / AppRes.designHeight);
}

double wp(double size) {
  return AppRes.screenWidth * (size / AppRes.designWidth);
}

double sp(double size) {
  return AppRes.screenHeight * (size / 680);
}
