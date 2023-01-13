import 'package:flutter/material.dart';

class CounterProvider with ChangeNotifier {
  int counter = 1;

  void incrementCounter() {
    counter++;
    notifyListeners();
  }

  void decrementCounter() {
    if (counter > 1 && counter != 0) {
      counter--;
    } else {
      counter;
    }
    notifyListeners();
  }
}
