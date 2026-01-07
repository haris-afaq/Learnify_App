import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:learnify_app/config/Components/text_styles/body_text.dart';
import 'package:learnify_app/config/Components/text_styles/heading2.dart';
import 'package:learnify_app/config/constants/colors.dart';

class ContinueLearning extends StatelessWidget {
  const ContinueLearning({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
           padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Column(
              children: [
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Heading2(title: "Continue Learning", titleColor: AppColors.blackColor,),
                     TextButton(onPressed: (){}, child: Bodytext(text: "View All",
                     textColor: AppColors.blueColor,
                     ))
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    height: 82,
                    decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                            Image(image: AssetImage("assets/images/flutter.png"))
                            ],
                          ),
                        ),
                        Column(
  mainAxisAlignment: MainAxisAlignment.center,
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Bodytext(
      text: "Flutter App Development",
      textColor: AppColors.blackColor,
    ),
    const SizedBox(height: 4),
    Bodytext(
      text: "by Asif Taj",
      textColor: AppColors.grayColor,
    ),
    const SizedBox(height: 8),

    SizedBox(
      width: 150, 
      child: LinearProgressIndicator(
        backgroundColor: AppColors.appBackgroundColor,
        value: 0.9, 
        valueColor: AlwaysStoppedAnimation<Color>(
          AppColors.blueColor,
        ),
        minHeight: 6,
        borderRadius: BorderRadius.circular(10),
      ),
    ),
  ],
),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed: (){}, icon: SvgPicture.asset(
                               height: 35,
                               width: 35,
                                "assets/icons/play_button.svg"))
                          ],
                        ),
                    ],),
                  ),
              ],
            ),
          );
  }
}