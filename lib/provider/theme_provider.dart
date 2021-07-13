import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode;

  var brightness = SchedulerBinding.instance.window.platformBrightness;

  bool get isDarkMode => brightness == Brightness.dark;

  void toggleTheme(bool isOn) {
    // This is just for setting the toggle button
    brightness = isOn ? Brightness.dark : Brightness.light;

    themeMode = isOn ? ThemeMode.dark : ThemeMode.light;

    notifyListeners();
  }
}

class MyThemes {
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.grey.shade900,
    primaryColor: Colors.black,
    colorScheme: ColorScheme.dark(),
    primaryIconTheme:
        IconThemeData(color: Colors.tealAccent.shade400, opacity: 1),
    iconTheme: IconThemeData(color: Colors.teal.shade700, opacity: 0.8),
  );

  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white70,
    primaryColor: Colors.white,
    colorScheme: ColorScheme.light(),
    primaryIconTheme:
        IconThemeData(color: Colors.deepOrange.shade500, opacity: 0.8),
    iconTheme: IconThemeData(color: Colors.deepOrange.shade200, opacity: 0.8),
  );
}
