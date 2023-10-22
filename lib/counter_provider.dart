import 'package:flutter/cupertino.dart';

class Counter extends ChangeNotifier {
  int counter = 0;

  void plus() {
    counter++;
    notifyListeners();
  }

  void reStart() {
    counter = 0;
    notifyListeners();
  }
}
