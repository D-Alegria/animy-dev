import 'package:flutter/material.dart';

class ThemeConfig with ChangeNotifier {
  bool isLightTheme;

  ThemeConfig({this.isLightTheme});

  ThemeData get getThemeData => isLightTheme ? lightTheme : darkTheme;

  set setThemeData(bool val) {
    isLightTheme = val ? true : false;
    notifyListeners();
  }
}

final darkTheme = ThemeData(
  primarySwatch: Colors.grey,
  primaryColor: Color.fromRGBO(15, 12, 53, 1),
  brightness: Brightness.dark,
  backgroundColor: Color.fromRGBO(15, 12, 53, 1),
  accentColor: Colors.white,
  iconTheme: IconThemeData(color: Color.fromRGBO(255, 255, 255, 1)),
  accentIconTheme: IconThemeData(color: Color.fromRGBO(150, 150, 150, 1)),
  dividerColor: Colors.white,
  hintColor: Colors.grey,
  appBarTheme: AppBarTheme(
    brightness: Brightness.dark,
    color: Color.fromRGBO(30, 24, 105, 1),
    actionsIconTheme: IconThemeData(
      color: Color.fromRGBO(255, 255, 255, 1),
    ),
    elevation: 0,
    iconTheme: IconThemeData(
      color: Color.fromRGBO(255, 255, 255, 1),
    ),
    textTheme: TextTheme(
      caption: TextStyle(
        color: Color.fromRGBO(255, 255, 255, 1),
      ),
    ),
  ),
);

final lightTheme = ThemeData(
  primarySwatch: Colors.grey,
  primaryColor: Color.fromRGBO(15, 12, 53, 1),
  brightness: Brightness.light,
  backgroundColor: Color.fromRGBO(255, 255, 255, 1),
  accentColor: Colors.black,
  iconTheme: IconThemeData(color: Color.fromRGBO(255, 255, 255, 1)),
  accentIconTheme: IconThemeData(color: Color.fromRGBO(200, 200, 200, 1)),
  dividerColor: Colors.black,
  appBarTheme: AppBarTheme(
    brightness: Brightness.light,
    color:  Color.fromRGBO(59, 48, 210, 1),
    actionsIconTheme: IconThemeData(
      color: Color.fromRGBO(255, 255, 255, 1),
    ),
    elevation: 0,
    iconTheme: IconThemeData(
      color: Color.fromRGBO(255, 255, 255, 1),
    ),
    textTheme: TextTheme(
      caption: TextStyle(
        color: Color.fromRGBO(255, 255, 255, 1),
      ),
    ),
  ),
);
