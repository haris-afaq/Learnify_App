import 'package:flutter/material.dart';
import 'package:learnify_app/config/constants/colors.dart';

class MainButton extends StatelessWidget {
  final String title;
  final Color color;
  final VoidCallback onTap;

   MainButton({
  super.key,
  required this.title,
  required this.onTap,
  this.color= AppColors.greenColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          color: color  ,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Center(
          child: Text(
            title, 
            style: TextStyle(color: AppColors.whiteColor, fontSize: 18, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}