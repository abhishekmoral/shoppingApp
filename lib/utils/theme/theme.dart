import 'package:flutter/material.dart';
import 'package:mykart/utils/constant/colors.dart';
import 'package:mykart/utils/theme/widgets_theme/appbar_theme.dart';
import 'package:mykart/utils/theme/widgets_theme/checkbox_theme.dart';
import 'package:mykart/utils/theme/widgets_theme/chip_theme.dart';
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
    chipTheme: UChipTheme.lightChipTheme ,
    scaffoldBackgroundColor: UColors.white ,
    appBarTheme: UAppBarTheme.lightAppBarTheme,
    checkboxTheme: UCheckBoxTheme.lightCheckBoxTheme,
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
    chipTheme: UChipTheme.darkChipTheme,
    scaffoldBackgroundColor: UColors.dark,
    appBarTheme: UAppBarTheme.darkAppBarTheme,
    checkboxTheme: UCheckBoxTheme.darkCheckBoxTheme,
    bottomSheetTheme: ,
    elevatedButtonTheme: ,
    outlinedButtonTheme: ,
    inputDecorationTheme: ,


  );

}