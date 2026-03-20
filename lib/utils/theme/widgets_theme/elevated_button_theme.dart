import 'package:flutter/material.dart';
import 'package:mykart/utils/constant/colors.dart';
import 'package:mykart/utils/constant/sizes.dart';

class UElevatedButtonTheme {
  UElevatedButtonTheme._();

  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: UColors.light,
      backgroundColor: UColors.primary,
      disabledBackgroundColor: UColors.buttonDisable,
      disabledForegroundColor: UColors.darkerGrey,
      side: const BorderSide(color: UColors.light),
      padding: const EdgeInsets.symmetric(vertical: USizes.buttonHeight),
      textStyle: const TextStyle(
        fontSize: 16,
        color: UColors.textWhite,
        fontWeight: FontWeight.normal,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(USizes.buttonRadius),
      ),
    ),
  );
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: UColors.light,
      backgroundColor: UColors.primary,
      disabledBackgroundColor: UColors.buttonDisable,
      disabledForegroundColor: UColors.darkerGrey,
      side: const BorderSide(color: UColors.light),
      padding: const EdgeInsets.symmetric(vertical: USizes.buttonHeight),
      textStyle: const TextStyle(
        fontSize: 16,
        color: UColors.textWhite,
        fontWeight: FontWeight.w600,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(USizes.buttonRadius),
      ),
    ),
  );
}
