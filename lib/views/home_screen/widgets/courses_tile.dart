import 'package:flutter/material.dart';
import 'package:learnify_app/config/Components/text_styles/body_text.dart';
import 'package:learnify_app/config/Components/text_styles/heading2.dart';
import 'package:learnify_app/config/constants/colors.dart';
import 'package:learnify_app/config/extenssions/sizedBox.dart';

class CoursesTile extends StatelessWidget {
  final String imagePath;
  final String courseTitle;
  final String courseDescription;

  const CoursesTile({
    super.key,
    required this.imagePath,
    required this.courseTitle,
    required this.courseDescription,
  });

  ImageProvider _getImageProvider(String path) {
    if (path.startsWith('http')) {
      return NetworkImage(path);
    } else {
      return AssetImage(path);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Column(
              children: [
                Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5),
                    ),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: _getImageProvider(imagePath),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Heading2(
                        title: courseTitle,
                        titleColor: AppColors.blackColor,
                      ),
                      5.height,
                      SizedBox(
                        width: 300,
                        child: Bodytext(
                          text: courseDescription,
                          textColor: AppColors.blackColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


