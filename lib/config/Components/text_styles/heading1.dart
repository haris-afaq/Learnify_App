import 'package:flutter/material.dart';
import 'package:learnify_app/config/constants/colors.dart';

class Heading1 extends StatelessWidget {
  final String title;
  final Color titleColor;
  const Heading1({super.key, 
    required this.title,
     this.titleColor = AppColors.blackColor
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontSize: 20,
      fontWeight: FontWeight.w600
      ),
    );
  }
}