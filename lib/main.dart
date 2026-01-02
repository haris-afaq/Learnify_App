import 'package:flutter/material.dart';
import 'package:learnify_app/config/routes/route_names.dart';
import 'package:learnify_app/config/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
    
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
          debugShowCheckedModeBanner: false,
      initialRoute: RouteNames.splashScreen,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}
