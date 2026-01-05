import 'package:flutter/material.dart';
import 'package:learnify_app/config/routes/route_names.dart';
import 'package:learnify_app/views/auth_view/login/login.dart';
import 'package:learnify_app/views/auth_view/signUp/signup.dart';
import 'package:learnify_app/views/home_screen/home_screen.dart';
import 'package:learnify_app/views/splashScreen/splash_screen.dart';


class Routes{
static Route<dynamic> generateRoute(RouteSettings settings){
  switch(settings.name){
    case RouteNames.splashScreen:
      return MaterialPageRoute(builder: (context)=> SplashScreen());

      case RouteNames.loginScreen:
      return MaterialPageRoute(builder: (context)=> LoginScreen());

      case RouteNames.createAccount:
      return MaterialPageRoute(builder: (_)=> SignupScreen());

      case RouteNames.homeScreen:
      return MaterialPageRoute(builder: (_)=> HomeScreen());
    
    default: 
      return MaterialPageRoute(builder: (context){
        return Scaffold(
          body: Center(
            child: Text("No Route Generated..."),
          ),
        );
      });
    
  }
}
}