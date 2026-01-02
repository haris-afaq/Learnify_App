import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:learnify_app/config/routes/route_names.dart';
import 'package:learnify_app/config/routes/routes.dart';
import 'package:learnify_app/firebase_options.dart';

// void main() {
//   runApp(const MyApp());
// }
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Learnify Mobile App',
      theme: ThemeData(
    
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
          debugShowCheckedModeBanner: false,
      initialRoute: RouteNames.splashScreen,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}
