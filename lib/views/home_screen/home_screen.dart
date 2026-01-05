import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:learnify_app/config/Components/text_styles/body_text.dart';
import 'package:learnify_app/config/Components/text_styles/heading2.dart';
import 'package:learnify_app/config/constants/colors.dart';
import 'package:learnify_app/config/constants/strings.dart';
import 'package:learnify_app/config/extenssions/sizedBox.dart';
import 'package:learnify_app/views/home_screen/widgets/categories_tile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController searchController = TextEditingController();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    searchController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackgroundColor,
     appBar: AppBar(
      backgroundColor: AppColors.whiteColor,
     leading: Padding(
       padding: const EdgeInsets.only(bottom: 10,
       left: 15
       ),
       child: Row(
         children: [
           SizedBox(
            height: 37,
            width: 37,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image(image: AssetImage("assets/images/logo.png"))),
           ),
         ],
       ),
     ),
     actions: [
      IconButton(onPressed: (){}, icon: SizedBox(
        height: 25,
        width: 25,
        child: SvgPicture.asset("assets/icons/notifications.svg"))),
        IconButton(onPressed: (){}, icon: SizedBox(
        height: 25,
        width: 25,
        child: SvgPicture.asset("assets/icons/profile_icon.svg"))),
        10.width
     ],
     ),
    
    body: SingleChildScrollView(child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment:CrossAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            height: 155,
            decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/images/home_bg.png"))
          ),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Heading2(title: "Welcome Back, Harix",
                titleColor: AppColors.whiteColor,
                ),
                10.height,
                Bodytext(text: AppStrings.continueLearning,
                textColor: AppColors.whiteColor,
                )
              ],
            ),
          ),
          ),
          10.height,
          Padding(
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
          ),
          20.height,

        ],
      ),
    )),
    );
  }
}