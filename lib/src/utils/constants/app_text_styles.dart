import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppTextStyles {
  AppTextStyles._();

  static const labelStyle = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.w700,
    fontSize: 40,
  );

  static const unselectedLabelStyle = TextStyle(
    color: Colors.black87,
    fontWeight: FontWeight.w600,
    fontSize: 40,
  );

  static const movieNameTextStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 45,
  );

  static const movieDetails = TextStyle(
    height: 1.5,
    fontSize: 20,
  );

  static const bookButtonTextStyle = TextStyle(
    color: Colors.white,
    fontSize: 20,
    fontWeight: FontWeight.w500,
    letterSpacing: 1.1,
  );

  static const movieDescTextStyle = TextStyle(
    fontWeight: FontWeight.w300,
    fontSize: 20,
  );

  static const infoTitleTextStyle = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 20,
  );

  static const infoContentTextStyle = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 20,
  );
}
