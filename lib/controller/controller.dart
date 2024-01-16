import 'package:flutter/material.dart';

class ColorsListProvider extends ChangeNotifier {
  int colorsTheme = 0;
  List colors = [
    Colors.green,
    Colors.yellow,
    Colors.red,
    Colors.tealAccent,
    Colors.pink,
    Colors.redAccent,
    Colors.deepPurple,
    Colors.brown,
  ];
  void changeColors() {
    colorsTheme = (colorsTheme + 1) % colors.length;
    notifyListeners();
  }
}
