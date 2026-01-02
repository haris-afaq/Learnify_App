import 'package:flutter/material.dart';
import 'package:learnify_app/config/routes/route_names.dart';
import 'package:learnify_app/views/login/login.dart';
import 'package:learnify_app/views/splashScreen/splash_screen.dart';


class Routes{
static Route<dynamic> generateRoute(RouteSettings settings){
  switch(settings.name){
    case RouteNames.splashScreen:
      return MaterialPageRoute(builder: (context)=> SplashScreen());

      case RouteNames.loginScreen:
      return MaterialPageRoute(builder: (context)=> LoginScreen());
    
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