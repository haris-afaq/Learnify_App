import 'package:flutter/material.dart';
import 'package:learnify_app/config/constants/colors.dart';

class Bodytext extends StatelessWidget {
  final String text;
  final Color? textColor;
  const Bodytext( {
    required this.text,
    this.textColor
  });

  @override
  Widget build(BuildContext context) {
    return Text(text,
    style: TextStyle(fontSize: 12,
    color: textColor??AppColors.blackColor,
    fontWeight: FontWeight.w400),
    );
  }
}