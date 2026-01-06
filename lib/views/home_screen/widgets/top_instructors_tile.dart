import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:learnify_app/config/Components/text_styles/body_text.dart';
import 'package:learnify_app/config/Components/text_styles/heading3.dart';
import 'package:learnify_app/config/constants/colors.dart';
import 'package:learnify_app/config/extenssions/sizedBox.dart';

class TopInstructorsTile extends StatelessWidget {
  final String imagePath;
  final String instructorName;
  final String instructorProfession;
  const TopInstructorsTile({super.key,
  required this.imagePath,
  required this.instructorName,
  required this.instructorProfession
  });

  @override
  Widget build(BuildContext context) {
    return     Container(
                      height: 125,
                      width: 125,
                      decoration: BoxDecoration(
                        color: AppColors.whiteColor,
                        borderRadius: BorderRadius.circular(5)
                      ),
                      child: Column(
                        children: [
                          10.height,
                          ClipRRect(
                            borderRadius: BorderRadiusGeometry.circular(50),
                            child: Image(
                              height: 50,
                              width: 50,
                              image: AssetImage(imagePath)),
                          ),
                          3.height,
                          Heading3(title: instructorName,
                          titleColor: AppColors.blackColor,
                          ),
                          3.height,
                          Bodytext(text: instructorProfession,
                          textColor: AppColors.blackColor,
                          )
                        ],
                      ),
                    );
  }
}