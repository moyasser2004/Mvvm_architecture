import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import '../const/app_colors.dart';

abstract class AppThemeData {
  static ThemeData themeDataDark() => ThemeData.dark().copyWith(
      scaffoldBackgroundColor: AppColors.appColor,
      useMaterial3: false,
      textTheme:
          GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
      appBarTheme: const AppBarTheme(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: AppColors.appColor,
          statusBarBrightness: Brightness.light,
          systemNavigationBarColor: AppColors.appColorBlack,
        ),
        backgroundColor: AppColors.appColor,
        elevation: 0,
      ));

  static ThemeData themeDataLight() => ThemeData.light().copyWith(
      scaffoldBackgroundColor: AppColors.appColor,
      useMaterial3: false,
      textTheme: GoogleFonts.montserratTextTheme(
          ThemeData.light().textTheme),
      appBarTheme: const AppBarTheme(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: AppColors.appColor,
          statusBarBrightness: Brightness.light,
          systemNavigationBarColor: AppColors.appColorBlack,
        ),
        backgroundColor: AppColors.appColor,
        elevation: 0,
      ));
}
