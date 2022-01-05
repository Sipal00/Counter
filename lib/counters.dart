import 'package:flutter/foundation.dart';

class CounterAppState extends ChangeNotifier {
  int? i = 0;
  void increment() {
    i = i! + 1;

    notifyListeners();
  }

  void decrement() {
    i = i! - 1;
    notifyListeners();
  }
}
