import 'package:flutter/material.dart';
import 'package:learnify_app/config/Components/app_bar.dart';
import 'package:learnify_app/config/constants/colors.dart';

class CommunityScreen extends StatefulWidget {

  static const List<Tab> communityTabs = <Tab>[
    Tab(text: "All",),
     Tab(text: "Programming",),
      Tab(text: "Designing",),
  ];
  const CommunityScreen({super.key});

  @override
  State<CommunityScreen> createState() => _CommunityScreenState();
}

class _CommunityScreenState extends State<CommunityScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: CommunityScreen.communityTabs.length,

      child: Scaffold(
        backgroundColor: AppColors.appBackgroundColor,
        appBar: MyAppBar(title: "Community"),

        body: Padding(
          padding: const EdgeInsets.only(top: 24, left: 15, right: 15),
          child: Column(
            children: [
              const TabBar(tabs: CommunityScreen.communityTabs,
              indicatorColor: AppColors.blueColor,
              unselectedLabelColor: AppColors.blackColor,
              labelColor: AppColors.blueColor,
              ),
          
          Expanded(
            child: TabBarView(
              children: [
                Center(child: Text("All Community Body"),),
                Center(child: Text("Programming Community Body"),),
                Center(child: Text("Designing Community Body"),),
              ]))
          
            ],
          ),
        ),
      ),
    );
  }
}