import 'package:flutter/material.dart';
import 'package:learnify_app/config/Components/text_styles/heading2.dart';
import 'package:learnify_app/config/constants/colors.dart';
import 'package:learnify_app/config/extenssions/sizedBox.dart';
import 'package:learnify_app/views/home_screen/widgets/top_instructors_tile.dart';

class TopInstructors extends StatelessWidget {
  const TopInstructors({super.key});

  @override
  Widget build(BuildContext context) {
    return           Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Heading2(title: "Top Instructors",
                    titleColor: AppColors.blackColor,
                    ),
                  ],
                ),
                5.height,
                Row(
                  children: [
                    TopInstructorsTile(
                      imagePath: "assets/images/asif.png",
                      instructorName: "Asif taj",
                       instructorProfession: "Full Stack Developer"),
                       10.width,
                       TopInstructorsTile(
                      imagePath: "assets/images/gfx.png",
                      instructorName: "Imran Ali Danna",
                       instructorProfession: "Graphics Designer"),

                  ],
                ),
              ],
            ),
          );
  }
}