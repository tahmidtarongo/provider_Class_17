import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class Counter2 extends ChangeNotifier {
  int counter2 = 50;

  void plus() {
    counter2++;
    notifyListeners();
  }
}
