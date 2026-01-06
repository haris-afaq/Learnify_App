import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:learnify_app/views/community/community.dart';
import 'package:learnify_app/views/explore/explore.dart';
import 'package:learnify_app/views/home_screen/home_screen.dart';
import 'package:learnify_app/views/my_courses/my_courses.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';




class PersistentBottom extends StatefulWidget {
  const PersistentBottom({super.key});

  @override
  State<PersistentBottom> createState() => _PersistentBottomState();
}

class _PersistentBottomState extends State<PersistentBottom> {
  late PersistentTabController controller;

  @override
  void initState() {
    super.initState();
    controller = PersistentTabController(initialIndex: 0);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: PersistentTabView(
        context,
        controller: controller,
        screens: const [
          HomeScreen(),
          ExploreScreen(),
          MyCoursesScreen(),
          CommunityScreen(),
        ],
        items: [
          PersistentBottomNavBarItem(
  icon: SvgPicture.asset(
    'assets/icons/home_active.svg',
    width: 40,
    height: 40,
  ),
  inactiveIcon: SvgPicture.asset(
    'assets/icons/home_inactive.svg',
    width: 40,
    height: 40,
  ),
),

  PersistentBottomNavBarItem(
  icon: SvgPicture.asset(
    'assets/icons/explore_active.svg',
    width: 40,
    height: 40,
  ),
  inactiveIcon: SvgPicture.asset(
    'assets/icons/explore_inactive.svg',
    width: 40,
    height: 40,
  ),
),
          
              PersistentBottomNavBarItem(
  icon: SvgPicture.asset(
    'assets/icons/my_courses_active.svg',
    width: 40,
    height: 40,
  ),
  inactiveIcon: SvgPicture.asset(
    'assets/icons/my_courses_inactive.svg',
    width: 40,
    height: 40,
  ),
),
              PersistentBottomNavBarItem(
  icon: SvgPicture.asset(
    'assets/icons/community_active.svg',
    width: 40,
    height: 40,
  ),
  inactiveIcon: SvgPicture.asset(
    'assets/icons/community_inactive.svg',
    width: 40,
    height: 40,
  ),
),
          
        ],
        navBarStyle: NavBarStyle.style6,
        padding: const EdgeInsets.only(top: 7, bottom: 5),
      ),
    );
  }
}
