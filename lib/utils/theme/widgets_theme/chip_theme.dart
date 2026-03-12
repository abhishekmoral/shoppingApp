import 'package:flutter/material.dart';
import 'package:mykart/utils/constant/Colors.dart';

class UChipTheme {
  UChipTheme._();

  static  ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: UColors.gray.withValues(alpha: 0.4),
    labelStyle: const TextStyle(color: UColors.dark),
    selectedColor: UColors.primary,
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: UColors.white,
  );
  static ChipThemeData darkChipTheme = ChipThemeData(
    disabledColor: UColors.gray.withValues(alpha: 0.4),
    labelStyle: const TextStyle(color: UColors.white),
    selectedColor: UColors.primary,
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: UColors.white,
  );
}

