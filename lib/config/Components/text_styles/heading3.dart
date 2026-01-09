import 'package:flutter/material.dart';
import 'package:learnify_app/config/constants/colors.dart';

class Heading3 extends StatelessWidget {
  final String title;
  final Color? titleColor;
  const Heading3({super.key, 
    required this.title,
    this.titleColor
  });

  @override
  Widget build(BuildContext context) {
     return Text(title,
     maxLines: 2,
    style: TextStyle(fontSize: 15,
    color: titleColor??AppColors.primaryColor,
    fontWeight: FontWeight.w500,
    ),
    );
  }
}