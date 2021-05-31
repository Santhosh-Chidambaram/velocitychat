import 'package:velocitychat/constants.dart';
import 'package:flutter/material.dart';

ThemeData lightThemeData(BuildContext context) {
  return ThemeData.light().copyWith(
    primaryColor: kPrimaryColor,
    primaryColorDark: klightInputColor,
    scaffoldBackgroundColor: kContentColorDarkTheme,
    textTheme: TextTheme(
      button: TextStyle(
        color: Colors.white,
      ),
      bodyText1: TextStyle(color: Colors.black),
      bodyText2: TextStyle(color: Colors.black),
      caption: TextStyle(color: Colors.black),
      subtitle1: TextStyle(color: Colors.black), // <-- that's the one
      headline1: TextStyle(color: Colors.black),
      headline2: TextStyle(color: Colors.black),
      headline3: TextStyle(color: Colors.black),
      headline4: TextStyle(color: Colors.black),
      headline5: TextStyle(color: Colors.black),
      headline6: TextStyle(color: Colors.black),
    ),
   
    inputDecorationTheme: InputDecorationTheme(
        prefixStyle: TextStyle(color: Colors.black87),
        filled: true,
        fillColor: klightInputColor,
        hintStyle: TextStyle(color: Colors.grey)),
  );
}

ThemeData darkThemeData(BuildContext context) {
  return ThemeData.dark().copyWith(
      primaryColor: kPrimaryColor,
      primaryColorDark: kdarkInputColor,
      scaffoldBackgroundColor: kContentColorLightTheme,
      textTheme: TextTheme(
          button: TextStyle(
            color: Colors.white,
          ),
          bodyText1: TextStyle(color: Colors.white),
          bodyText2: TextStyle(color: Colors.white)),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: kdarkInputColor,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: kContentColorLightTheme));
}
