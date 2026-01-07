import 'package:flutter/material.dart';
import 'package:learnify_app/config/Components/app_bar.dart';
import 'package:learnify_app/config/constants/colors.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackgroundColor,
      appBar: MyAppBar(title: "Featured Courses",
      ),
    );
  }
}