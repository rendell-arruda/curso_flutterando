import 'package:flutter/cupertino.dart';

class AppControler extends ChangeNotifier {
  static AppControler instance = AppControler();
  bool isDartTheme = false;

  changeTheme() {
    isDartTheme = !isDartTheme;
    notifyListeners();
  }
}
