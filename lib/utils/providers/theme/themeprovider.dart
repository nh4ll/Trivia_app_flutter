import 'package:flutter/material.dart';
import 'package:trivia_with_flutter/main.dart';

class ThemeProvider extends ChangeNotifier {
  Future<void> changeTheme() async {
    try {
      isLightTheme = !isLightTheme;
      print(isLightTheme);
    } on Exception catch (e) {
      print("Error in changing Themes : $e");
    }
    Future.delayed(Duration.zero, () => notifyListeners());
    // notifyListeners();
  }
}
