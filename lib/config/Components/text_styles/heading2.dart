import 'package:flutter/material.dart';
import 'package:learnify_app/config/constants/colors.dart';

class Heading2 extends StatelessWidget {
  final String title;
  final Color? heading2Color;
  const Heading2({super.key, 
  this.heading2Color= AppColors.blackColor,
    required this.title
  });

  @override
  Widget build(BuildContext context) {
    return Text(title,
    style: TextStyle(fontSize: 18,
    color:heading2Color,
    fontWeight: FontWeight.w500),
    );
  }
}