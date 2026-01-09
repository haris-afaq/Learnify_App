import 'package:flutter/material.dart';
import 'package:learnify_app/config/Components/text_styles/heading2.dart';
import 'package:learnify_app/config/constants/colors.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget{
  final String title;
  const MyAppBar({super.key,
  required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.whiteColor,
      title: SizedBox(
        width: 250,
        child: Heading2(title: title,
        titleColor: AppColors.blackColor,),
      ),
      iconTheme: IconThemeData(
        color: AppColors.blackColor
      ),
      automaticallyImplyLeading: true,
    );
  }
    @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
