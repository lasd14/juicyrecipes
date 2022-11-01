import 'package:flutter/material.dart';

class PrincipalTheme {

  //Colors
  static const primaryColor          = Color(0xFF5FD068);
  static const secondaryColor        = Color(0xFFFDD043);
  static const transparentColor      = Color(0x00000000);
  static const darkPrimaryColor      = Color(0xFF379237);
  static const whiteColor            = Color(0xFFF0F0F0);
  static const altPrimaryColor       = Color(0xFFA0E418);
  static const blackColor            = Color(0xFF1A1A1D);

  static final lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      iconTheme: IconThemeData(color: Color(0xFF1A1A1D)),
      titleTextStyle: TextStyle(color: Color(0xFF1A1A1D), fontSize: 20.0),
      backgroundColor: transparentColor,
      elevation: 0.0,
    ),
  );

}