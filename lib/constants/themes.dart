import 'package:flutter/material.dart';

import 'font.dart';

const primaryColor = Colors.yellow;
const darkBackgroundColor = Color.fromRGBO(3, 33, 74, 1);
final inputDecorationTheme = InputDecorationTheme(
  hintStyle: TextStyle(
    fontFamily: Font.montserrat.value,
    fontSize: 14,
  ),
  enabledBorder: const OutlineInputBorder(
    borderSide: BorderSide(color: Colors.white, width: 1),
  ),
  labelStyle: const TextStyle(color: primaryColor),
  filled: true,
  fillColor: darkBackgroundColor,
  focusedBorder: const OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.yellow,
      width: 2,
    ),
  ),
);

final textTheme = Typography.whiteRedwoodCity.copyWith(
  headline1: TextStyle(
    fontFamily: Font.nunitoSans.value,
  ),
  headline2: TextStyle(
    fontFamily: Font.nunitoSans.value,
  ),
  headline3: TextStyle(
    fontFamily: Font.nunitoSans.value,
  ),
  headline4: TextStyle(
    fontFamily: Font.nunitoSans.value,
  ),
  headline5: TextStyle(
    fontFamily: Font.nunitoSans.value,
  ),
  headline6: TextStyle(
    fontFamily: Font.nunitoSans.value,
  ),
  bodyText1: TextStyle(
    fontFamily: Font.montserrat.value,
  ),
  bodyText2: TextStyle(
    fontFamily: Font.montserrat.value,
  ),
  caption: TextStyle(
    fontFamily: Font.montserrat.value,
  ),
  button: TextStyle(
    fontFamily: Font.montserrat.value,
  ),
  overline: TextStyle(
    fontFamily: Font.montserrat.value,
  ),
);

class Themes {
  static final dark = ThemeData.dark().copyWith(
    dividerTheme: const DividerThemeData(
      color: Colors.white,
    ),
    textTheme: textTheme.copyWith(
      headline1: TextStyle(
        fontFamily: Font.nunitoSans.value,
        color: Colors.white,
      ),
      headline2: TextStyle(
        color: Colors.white,
        fontFamily: Font.nunitoSans.value,
      ),
      headline3: TextStyle(
        color: Colors.white,
        fontFamily: Font.nunitoSans.value,
      ),
      headline4: TextStyle(
        color: Colors.white,
        fontFamily: Font.nunitoSans.value,
      ),
      headline5: TextStyle(
        fontFamily: Font.nunitoSans.value,
        color: Colors.white,
      ),
      headline6: TextStyle(
        color: Colors.white,
        fontFamily: Font.nunitoSans.value,
      ),
      bodyText1: TextStyle(
        fontFamily: Font.montserrat.value,
        color: Colors.white,
      ),
      bodyText2: TextStyle(
        fontFamily: Font.montserrat.value,
        color: Colors.white,
      ),
      caption: TextStyle(
        fontFamily: Font.montserrat.value,
        color: Colors.white,
      ),
      button: TextStyle(
        color: Colors.white,
        fontFamily: Font.montserrat.value,
      ),
      overline: TextStyle(
        color: Colors.white,
        fontFamily: Font.montserrat.value,
      ),
    ),
    backgroundColor: darkBackgroundColor,
    scaffoldBackgroundColor: const Color.fromRGBO(2, 22, 49, 1),
    primaryColor: primaryColor,
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: primaryColor,
    ),
    inputDecorationTheme: inputDecorationTheme.copyWith(
      fillColor: darkBackgroundColor,
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        side: MaterialStateProperty.all<BorderSide>(
            const BorderSide(width: 1, color: Colors.white)),
        fixedSize: MaterialStateProperty.all<Size>(
          const Size.fromHeight(36),
        ),
        textStyle: MaterialStateProperty.all<TextStyle>(
          TextStyle(
            fontFamily: Font.montserrat.value,
          ),
        ),
        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
        backgroundColor: MaterialStateProperty.all<Color>(darkBackgroundColor),
      ),
    ),
    switchTheme: const SwitchThemeData(
      splashRadius: 20,
    ),
  );
}
