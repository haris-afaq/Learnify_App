import 'package:flutter/material.dart';
import 'package:learnify_app/config/constants/colors.dart';

class CustomSnackbar {
  CustomSnackbar(String string);

  static void show(
    BuildContext context, {
    required String text,
    Color? backgroundColor,
    TextStyle? textStyle,
    Duration duration = const Duration(seconds: 1),
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        showCloseIcon: true,
        closeIconColor: AppColors.whiteColor,
       content: Text(
  text,
  style: textStyle ?? const TextStyle(color: AppColors.whiteColor),
),
backgroundColor: backgroundColor ?? AppColors.greenColor,
      )
    );
  }
}