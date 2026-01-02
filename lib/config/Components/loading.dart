import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learnify_app/config/constants/colors.dart';

class LoadingWidget extends StatelessWidget {

  final double size;
  const LoadingWidget({super.key, this.size=30});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size,
      width: size,
      child: Platform.isAndroid? CircularProgressIndicator(
        color: AppColors.greenColor): CupertinoActivityIndicator(
          color: AppColors.greenColor),
    );
  }
}