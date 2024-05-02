import 'package:flutter/material.dart';
import 'package:mvvm_architecture/core/const/app_colors.dart';

abstract class AppStyles {
  static const TextStyle styleSemiBold21 = TextStyle(
    fontSize: 21,
    fontWeight: FontWeight.w600,
  );

  static TextStyle styleNormal17 = const TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.normal,
  );

  static TextStyle styleBold16 = const TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.bold,
    overflow: TextOverflow.ellipsis,
  );

  static TextStyle styleBold18 = const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );

  static TextStyle styleBold10 = const TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.w600,
      color: AppColors.fontGrey);

  static TextStyle styleBold28 = const TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.bold,
  );
}
