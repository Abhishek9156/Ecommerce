import 'package:ecommerce/utills/theme/custom_themes/appbar_theme.dart';
import 'package:ecommerce/utills/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:ecommerce/utills/theme/custom_themes/checkbox_theme.dart';
import 'package:ecommerce/utills/theme/custom_themes/chip_theme.dart';
import 'package:ecommerce/utills/theme/custom_themes/elevated_button_theme.dart';
import 'package:ecommerce/utills/theme/custom_themes/outline_button_theme.dart';
import 'package:ecommerce/utills/theme/custom_themes/text_field_theme.dart';
import 'package:ecommerce/utills/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';

class TAppTheme {
  TAppTheme._();

  /// light Theme
  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Roboto',
      brightness: Brightness.light,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.white,
      textTheme: TTextTheme.lightTextTheme,
      chipTheme: TchipTheme.lightChipTheme,
      appBarTheme: TAppBarTheme.lightAppBarTheme,
      checkboxTheme: TCheckboxTheme.lightCheckboxTheme,
      bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
      elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
      outlinedButtonTheme: TOutlineButtonTheme.lightOutlineButtonTheme,
      inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme);

  /// dark theme
  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Roboto',
      brightness: Brightness.dark,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.black,
      textTheme: TTextTheme.darkTextTheme,
      chipTheme: TchipTheme.darkChipTheme,
      appBarTheme: TAppBarTheme.darkAppBarTheme,
      checkboxTheme: TCheckboxTheme.darkCheckboxTheme,
      bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
      elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
      outlinedButtonTheme: TOutlineButtonTheme.darkOutlineButtonTheme,
      inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme);
}
