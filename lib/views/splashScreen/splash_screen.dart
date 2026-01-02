import 'dart:async';

import 'package:flutter/material.dart';
import 'package:learnify_app/config/Components/loading.dart';
import 'package:learnify_app/config/constants/colors.dart';
import 'package:learnify_app/config/routes/route_names.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), (){
      Navigator.pushNamed(context, RouteNames.loginScreen);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Image(
                height: 250,
                width: 250,
                image: AssetImage("assets/images/logo.png")),
            ),
            LoadingWidget(),
          ],
        )),

    );
  }
}