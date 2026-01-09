import 'package:learnify_app/config/routes/widget.dart';

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

      case RouteNames.profileScreen:
      return MaterialPageRoute(builder: (_)=> ProfileScreen());

      case RouteNames.bottomNavScreen:
      return MaterialPageRoute(builder: (context)=> const PersistentBottom());

case RouteNames.playlistScreen:
  final args = settings.arguments as Map<String, dynamic>;
  return MaterialPageRoute(
    builder: (_) => PlaylistScreen(
      playlistId: args['playlistId'],
      playlistTitle: args['playlistTitle'],
      channelTitle: args['channelTitle'],
    ),
  );

  
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