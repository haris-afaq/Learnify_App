import 'package:flutter/material.dart';
import 'package:learnify_app/config/Components/app_bar.dart';
import 'package:learnify_app/config/constants/colors.dart';



class MyCoursesScreen extends StatefulWidget {
  static const List<Tab> myCoursesTab = <Tab>[
    Tab(text: "All"),
    Tab(text: "In Progress"),
    Tab(text: "Completed"),
  ];

  const MyCoursesScreen({super.key});

  @override
  State<MyCoursesScreen> createState() => _MyCoursesScreenState();
}

class _MyCoursesScreenState extends State<MyCoursesScreen> {
  @override
  Widget build(BuildContext context) {


    //Default Tab Controller 
    return DefaultTabController(
      length: MyCoursesScreen.myCoursesTab.length,


      child: Scaffold(
        backgroundColor: AppColors.appBackgroundColor,
        appBar: MyAppBar(title: "My Courses"),
        body: Padding(
          padding: const EdgeInsets.only(top: 24, left: 15, right: 15),
          child: Column(
            children: [


              //Tab Bar
              const TabBar(
                tabs: MyCoursesScreen.myCoursesTab,
                indicatorColor: AppColors.blueColor,
                unselectedLabelColor: AppColors.blackColor,
                labelColor: AppColors.blueColor,
              ),
              //Tab Body
              Expanded(
                child: TabBarView(
                  children: [
                    Center(child: Text("All Courses")),
                    Center(child: Text("In Progress Courses")),
                    Center(child: Text("Completed Courses")),
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
