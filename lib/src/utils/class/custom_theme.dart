import 'package:flutter/material.dart';
import 'package:flutter_yodzikir/src/utils/utils.dart';

class CustomTheme {
  static ThemeData get lightTheme {
    //1
    return ThemeData(
      //2
      primaryColor: kPrimaryColor,
      scaffoldBackgroundColor: Colors.white,
      // fontFamily: 'Montserrat', //3
      buttonTheme: ButtonThemeData(
        // 4
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
        buttonColor: kAccentColor,
      ),
      hintColor: Colors.grey,
      inputDecorationTheme: const InputDecorationTheme(
        fillColor: kPrimaryColor,
        focusColor: kPrimaryColor,
        prefixStyle: TextStyle(
          color: kPrimaryColor,
          backgroundColor: kPrimaryColor,
        ),
        suffixStyle: TextStyle(
          color: kPrimaryColor,
          backgroundColor: kPrimaryColor,
        ),
      ),
      iconTheme: const IconThemeData(
        color: kPrimaryColor,
      ),
      highlightColor: kPrimaryColor,
      indicatorColor: kPrimaryColor,
      primaryIconTheme: const IconThemeData(
        color: kPrimaryColor,
      ),
      textSelectionTheme:
          const TextSelectionThemeData(cursorColor: kAccentColor),
      fontFamily: 'SourceSansPro',
      textTheme: const TextTheme(
        headline3: TextStyle(
          fontFamily: 'OpenSans',
          fontSize: 45.0,
          fontWeight: FontWeight.w400,
          color: Colors.white,
        ),
        button: TextStyle(
          // OpenSans is similar to NotoSans but the uppercases look a bit better IMO
          fontFamily: 'OpenSans',
        ),
        caption: TextStyle(
          fontFamily: 'NotoSans',
          fontSize: 12.0,
          fontWeight: FontWeight.normal,
          color: Colors.black,
        ),
      ),
      colorScheme: ColorScheme.fromSwatch().copyWith(secondary: kAccentColor),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
        primaryColor: Colors.grey,
        scaffoldBackgroundColor: Colors.black,
        fontFamily: 'Montserrat',
        textTheme: ThemeData.dark().textTheme,
        buttonTheme: ButtonThemeData(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
          buttonColor: Colors.deepPurple,
        ));
  }

  static ThemeData get lightThemeV2 {
    return ThemeData(
      brightness: Brightness.light,
      visualDensity: const VisualDensity(vertical: 0.5, horizontal: 0.5),
      primarySwatch: const MaterialColor(
        0xFF0064AD,
        <int, Color>{
          50: Color(0xFF0064ec),
          100: Color(0xFF0064f3),
          200: Color(0xFF0064ec),
          300: Color(0xFF0064e4),
          400: Color(0xFF0064dc),
          500: Color(0xFF0064c3),
          600: Color(0xFF0064dc),
          700: Color(0xFF0064dc),
          800: Color(0xFF0064dc),
          900: Color(0xFF0064dc),
        },
      ),
      primaryColor: kPrimaryColor,
      primaryColorLight: kPrimaryColorLight,
      primaryColorDark: kPrimaryColorDark,
      canvasColor: kPrimaryColor,
      // accentColor: kAccentColor,
      // accentColorBrightness: Brightness.light,
      scaffoldBackgroundColor: const Color(0xffB5BFD3),
      // bottomAppBarColor: kColorOrange,
      bottomAppBarColor: const Color(0xFF00649b),
      cardColor: Colors.white,
      dividerColor: const Color(0x1f6D42CE),
      focusColor: const Color(0x1aF5E0C3),
    );
  }
}
