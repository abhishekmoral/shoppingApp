import 'package:flutter/material.dart';
import 'package:mykart/utils/constant/Colors.dart';

class UAppTheme{
   // private constructor.
  UAppTheme._();
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: '',
    brightness: Brightness.light,
    primaryColor: UColors.primary,
    disabledColor: UColors.gray,

  );
  static ThemeData darkTheme = ThemeData();

}