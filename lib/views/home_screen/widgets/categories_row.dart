import 'package:flutter/material.dart';
import 'package:learnify_app/config/Components/text_styles/body_text.dart';
import 'package:learnify_app/config/Components/text_styles/heading2.dart';
import 'package:learnify_app/config/constants/colors.dart';
import 'package:learnify_app/views/home_screen/widgets/categories_tile.dart';

class CategoriesRow extends StatelessWidget {
  const CategoriesRow({super.key});

  @override
  Widget build(BuildContext context) {
    return    Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Heading2(title: "Categories", titleColor: AppColors.blackColor,),
                   TextButton(onPressed: (){}, child: Bodytext(text: "View All",
                   textColor: AppColors.blueColor,
                   ))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CategoriesTile( svgPath: "assets/icons/programming.svg"),
                    CategoriesTile(svgPath: "assets/icons/designing.svg"),
                    CategoriesTile( svgPath: "assets/icons/business.svg"),
                    CategoriesTile(svgPath: "assets/icons/languages.svg"),
                  ],
                ),
              ],
            ),
          );
  }
}