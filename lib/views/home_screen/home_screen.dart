import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:learnify_app/config/Components/text_styles/body_text.dart';
import 'package:learnify_app/config/Components/text_styles/heading2.dart';
import 'package:learnify_app/config/Components/text_styles/heading3.dart';
import 'package:learnify_app/config/constants/colors.dart';
import 'package:learnify_app/config/constants/strings.dart';
import 'package:learnify_app/config/extenssions/sizedBox.dart';
import 'package:learnify_app/views/home_screen/widgets/categories_row.dart';
import 'package:learnify_app/views/home_screen/widgets/continue_learning.dart';
import 'package:learnify_app/views/home_screen/widgets/courses_tile.dart';
import 'package:learnify_app/views/home_screen/widgets/top_instructors_tile.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController searchController = TextEditingController();

    String userName = "";

  @override
  void initState() {
    super.initState();
    final user = FirebaseAuth.instance.currentUser;
    userName = user?.displayName ?? "User";
  }
  
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
                Heading2(title: "Welcome Back, $userName!",
                titleColor: AppColors.whiteColor,
                ),
                10.height,
                Bodytext(text: AppStrings.continueLearning,
                textColor: AppColors.whiteColor,
                ),
                 20.height,
                 ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.whiteColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(5)
                    ),
                  ),
                  onPressed: (){}, 
                  child: Heading3(title: "Resume Learning",
                  titleColor: AppColors.blueColor,
                  ))
              ],
            ),
          ),
          ),
          10.height,
          CategoriesRow(),
          10.height,
          ContinueLearning(),
          10.height,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Heading2(title: "Featured Courses",
                    titleColor: AppColors.blackColor,
                    ),
                    TextButton(
                      onPressed: (){}, 
                      child: Bodytext(text: "View All",
                    textColor: AppColors.blueColor,
                    ))
                  ],
                ),
                5.height,
                       CoursesTile(imagePath: "assets/images/flutter_thumbnail.png", 
          courseTitle: "Flutter App Development", 
          courseDescription: "Learn flutter app development from scratch with hands-on project, with ASIF TAJ"),
                          10.height,
                       CoursesTile(imagePath: "assets/images/react_thumbnail.png", 
          courseTitle: "Complete React course with projects | Chaye aur Code", 
          courseDescription: "Learn React development from scratch with hands-on project, with Chaye aur Code"),
                                    10.height,
                       CoursesTile(imagePath: "assets/images/uiux_thumbnail.png", 
          courseTitle: "Complete UI/UX Designing Course", 
          courseDescription: "Master modern design principles and create stunning user interfaces, with HARIX AFAQ"),
              ],
            ),
          
          ),
          10.height,
          Padding(
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
          ),
        ],
      ),
    )),
    );
  }
}