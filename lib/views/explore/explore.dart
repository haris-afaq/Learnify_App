import 'package:flutter/material.dart';
import 'package:learnify_app/config/Components/app_bar.dart';
import 'package:learnify_app/config/Components/text_styles/heading2.dart';
import 'package:learnify_app/config/constants/colors.dart';
import 'package:learnify_app/config/extenssions/sizedBox.dart';
import 'package:learnify_app/views/home_screen/widgets/courses_tile.dart';

class ExploreScreen extends StatefulWidget {

  static const List<Tab> categoriesList = <Tab>[
    Tab(text: 'All'),
    Tab(text: 'Programming'),
    Tab(text: "Designing",),
  ];

  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
    TextEditingController searchController = TextEditingController();
    @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    searchController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
  length: ExploreScreen.categoriesList.length,
  child: Scaffold(
    backgroundColor: AppColors.appBackgroundColor,
    appBar: MyAppBar(
      title: "Featured Courses",
    ),
    body: Padding(
      padding: const EdgeInsets.only(top: 24, left: 15, right: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Search Field
          TextFormField(
            decoration: InputDecoration(
              label: const Text("Search here..."),
              labelStyle: TextStyle(color: AppColors.grayColor, fontSize: 13),
              fillColor: AppColors.whiteColor,
              filled: true,
              border: const OutlineInputBorder(),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.whiteColor)
              ),
              focusedBorder:  OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.grayColor)
              )
            ),
          ),

          20.height,

          Heading2(
            title: "Categories",
            titleColor: AppColors.blackColor,
          ),

          12.height,
// Categoriessss Tabsss
          const TabBar(
            tabs: ExploreScreen.categoriesList,
            indicatorColor: AppColors.blueColor,
            labelColor: AppColors.blueColor,
            unselectedLabelColor: AppColors.blackColor,
          ),
          20.height,

          // Tabssss Body
          Expanded(
            child: TabBarView(
              children: [
                // All Courses Tab
                Center(child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CoursesTile(
                        imagePath: "assets/images/flutter_thumbnail.png", 
                        courseTitle: "Flutter App Development", 
                        courseDescription: "Learn flutter app development from scratch with hands-on project, with ASIF TAJ"),
                        10.height,
                        CoursesTile(
                        imagePath: "assets/images/react_thumbnail.png", 
                        courseTitle: "Complete React course with projects | Chaye aur Code", 
                        courseDescription: "Learn React development from scratch with hands-on project, with Chaye aur Code"),
                        10.height,
                    ],
                  ),
                )),
                Center(child: Text("Programming Courses")),
                Center(child: Text("Designing Courses")),
               
              ],
            ),
          ),
        ],
      ),
    ),
  ),
);

  }
}