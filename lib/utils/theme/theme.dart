import 'package:flutter/material.dart';
import 'package:abba_app/utils/theme/custom_themes/appbar_theme.dart';
import 'package:abba_app/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:abba_app/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:abba_app/utils/theme/custom_themes/chip_theme.dart';
import 'package:abba_app/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:abba_app/utils/theme/custom_themes/text_theme.dart';
import 'package:abba_app/utils/theme/custom_themes/text_field_theme.dart';

class MyAppTheme {
  MyAppTheme._();

  /// Light Theme
  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.light,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.white,
      textTheme: MyTextTheme.lightTextTheme,
      elevatedButtonTheme: MyElevatedButtonTheme.lightElevatedButtonTheme,
      appBarTheme: MyAppBarTheme.lightAppBarTheme,
      bottomSheetTheme: MyBottomSheetTheme.lightBottomSheetTheme,
      checkboxTheme: MyCheckBoxTheme.lightCheckboxTheme,
      chipTheme: MyChipTheme.lightChipTheme,
      inputDecorationTheme: MyTextFieldTheme.lightInputDecorationTheme);

  /// Dark Theme
  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.dark,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.black,
      textTheme: MyTextTheme.darkTextTheme,
      elevatedButtonTheme: MyElevatedButtonTheme.darkElevationButtonTheme,
      appBarTheme: MyAppBarTheme.darkAppBarTheme,
      bottomSheetTheme: MyBottomSheetTheme.darkBottomSheetTheme,
      checkboxTheme: MyCheckBoxTheme.darkCheckboxTheme,
      chipTheme: MyChipTheme.darkChipTheme,
      inputDecorationTheme: MyTextFieldTheme.darkInputDecorationTheme);
}
