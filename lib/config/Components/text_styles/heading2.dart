import 'package:flutter/material.dart';
import 'package:learnify_app/config/constants/colors.dart';

class Heading2 extends StatelessWidget {
  final String title;
  final Color? titleColor;

  const Heading2({super.key, 
  this.titleColor,
    required this.title
  });

  @override
  Widget build(BuildContext context) {
    return Text(title,
    style: TextStyle(fontSize: 18,
 color: titleColor??AppColors.primaryColor,
    fontWeight: FontWeight.w500),
    );
  }
}