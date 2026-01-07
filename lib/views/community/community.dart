import 'package:flutter/material.dart';
import 'package:learnify_app/config/Components/app_bar.dart';
import 'package:learnify_app/config/constants/colors.dart';

class CommunityScreen extends StatefulWidget {
  const CommunityScreen({super.key});

  @override
  State<CommunityScreen> createState() => _CommunityScreenState();
}

class _CommunityScreenState extends State<CommunityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackgroundColor,
      appBar: MyAppBar(title: "Community"),
    );
  }
}