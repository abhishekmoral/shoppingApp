import 'package:flutter/material.dart';
import 'package:mykart/utils/constant/colors.dart';
import 'package:mykart/utils/theme/widgets_theme/text_theme.dart';

class UAppTheme{
   // private constructor.
  UAppTheme._();
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: '',
    brightness: Brightness.light,
    primaryColor: UColors.primary,
    disabledColor: UColors.gray,
    textTheme: UTextTheme.lightTextTheme,
    chipTheme: ,
    scaffoldBackgroundColor: UColors.white ,
    appBarTheme: ,
    checkboxTheme: ,
    bottomSheetTheme: ,
    elevatedButtonTheme: ,
    outlinedButtonTheme: ,
    inputDecorationTheme: ,

  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: '',
    brightness: Brightness.dark,
    primaryColor: UColors.primary,
    disabledColor: UColors.gray,
    textTheme: UTextTheme.darkTextTheme,
    chipTheme: ,
    scaffoldBackgroundColor: UColors.dark,
    appBarTheme: ,
    checkboxTheme: ,
    bottomSheetTheme: ,
    elevatedButtonTheme: ,
    outlinedButtonTheme: ,
    inputDecorationTheme: ,


  );

}