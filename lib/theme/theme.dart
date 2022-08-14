import 'package:flutter/material.dart';

class ThemeChanger with ChangeNotifier {
  bool _darkTheme = false;
  bool _customTheme = false;
  ThemeData _currentTheme = ThemeData.light();

  bool get darkTheme => _darkTheme;
  bool get customTheme => _customTheme;
  ThemeData get currentTheme => _currentTheme;

  set darkTheme(bool value) {
    _customTheme = false;
    _darkTheme = value;
    if (value) {
      _currentTheme = ThemeData.dark();
    } else {
      _currentTheme = ThemeData.light();
      // _currentTheme = ThemeData.light().copyWith(
      //     colorScheme:
      //         ColorScheme.fromSwatch().copyWith(secondary: Colors.pink));
      // ;
    }
    notifyListeners();
  }

  set customTheme(bool value) {
    _darkTheme = false;
    _customTheme = value;
    if (value) {
      _currentTheme = ThemeData.light();
      _currentTheme = ThemeData.dark().copyWith(
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.pink),
        primaryColor: Colors.white,
        scaffoldBackgroundColor: Color(0xff16202b),
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.yellowAccent),
        ),
      );
    } else {
      _currentTheme = ThemeData.light();
      _currentTheme = ThemeData.light().copyWith(
          colorScheme:
              ColorScheme.fromSwatch().copyWith(secondary: Colors.pink));
      ;
    }
    notifyListeners();
  }

//Constructor para que cargue lo guardado en preferencias del usuario
  ThemeChanger(int theme) {
    switch (theme) {
      case 1: //ligth
        _darkTheme = false;
        _customTheme = false;
        _currentTheme = ThemeData.light();

        ;
        break;

      case 2: //dark
        _darkTheme = true;
        _customTheme = false;
        _currentTheme = ThemeData.dark();
        break;

      case 3: //personalizado
        _darkTheme = false;
        _customTheme = true;
        _currentTheme = ThemeData.dark().copyWith(
            colorScheme:
                ColorScheme.fromSwatch().copyWith(secondary: Colors.pink));
        break;

      default:
        _darkTheme = false;
        _customTheme = false;
        _currentTheme = ThemeData.light();
        // _currentTheme = ThemeData.light().copyWith(
        //     colorScheme:
        //         ColorScheme.fromSwatch().copyWith(secondary: Colors.pink));
        // ;
        break;
    }
  }
}
