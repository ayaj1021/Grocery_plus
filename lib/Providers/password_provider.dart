import 'package:flutter/material.dart';

class PasswordProvider with ChangeNotifier {
  bool obscure = false;

  setObsure() {
    obscure = !obscure;
    notifyListeners();
  }
}
