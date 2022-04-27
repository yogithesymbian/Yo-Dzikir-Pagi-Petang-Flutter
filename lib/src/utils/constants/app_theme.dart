import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app_text_styles.dart';

class AppTheme {
  AppTheme._();
  static ThemeData light = ThemeData(
    pageTransitionsTheme: const PageTransitionsTheme(builders: {
      TargetPlatform.android: CupertinoPageTransitionsBuilder(),
      TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
    }),
    appBarTheme: const AppBarTheme(
      elevation: 0,
      foregroundColor: Colors.black,
      centerTitle: true,
      color: Colors.transparent,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
      titleTextStyle: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    ),
    scaffoldBackgroundColor: Colors.white,
    tabBarTheme: const TabBarTheme(
      labelColor: Colors.black,
      labelStyle: AppTextStyles.labelStyle,
      unselectedLabelStyle: AppTextStyles.unselectedLabelStyle,
    ),
  );

  static TextStyle darkStyle = const TextStyle(color: Colors.black);
  static TextTheme textTheme = TextTheme(
    headline1: darkStyle,
    headline2: darkStyle,
    headline3: darkStyle,
    headline4: darkStyle,
    headline5: darkStyle,
    headline6: darkStyle,
    subtitle1: darkStyle,
    subtitle2: darkStyle,
    bodyText1: darkStyle,
    bodyText2: darkStyle,
    caption: darkStyle,
    button: darkStyle,
    overline: darkStyle,
  );

  static ThemeData dark = ThemeData(
    textTheme: textTheme,
    primaryTextTheme: textTheme,
    pageTransitionsTheme: const PageTransitionsTheme(builders: {
      TargetPlatform.android: CupertinoPageTransitionsBuilder(),
      TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
    }),
    appBarTheme: const AppBarTheme(
      elevation: 0,
      foregroundColor: Colors.black,
      centerTitle: true,
      color: Colors.transparent,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
      titleTextStyle: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
    scaffoldBackgroundColor: Colors.black,
    tabBarTheme: const TabBarTheme(
      labelColor: Colors.white,
      labelStyle: AppTextStyles.labelStyle,
      unselectedLabelStyle: AppTextStyles.unselectedLabelStyle,
    ),
  );
}
