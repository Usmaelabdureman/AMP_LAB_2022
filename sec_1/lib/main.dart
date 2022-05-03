import 'package:flutter/material.dart';
import 'package:sec_1/first_screen.dart';
import 'package:sec_1/second_screen.dart';

void main() {
  runApp(RecipeApp());
}

class RecipeApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: FirstScreen(),
      // initialRoute: '/firstScreen',
      // routes: {
      //   '/firstScreen': (BuildContext context) => FirstScreen(),
      //   '/secondScreen': (BuildContext context) => SecondScreen(),
      // },
      onGenerateRoute: (RouteSettings settings) {
        print("route is ${settings.name}");
        if (settings.name == '/' || settings.name == '/firstScreen') {
          return MaterialPageRoute(builder: (_) {
            return FirstScreen();
          });
        }
        // /secondScreen/title
        final url = Uri.parse(settings.name!);

        if (url.pathSegments.first == 'secondScreen' &&
            url.pathSegments.length == 2) {
          return MaterialPageRoute(
            builder: (_) {
              return SecondScreen(
                title: url.pathSegments[1],
              );
            },
          );
        }
      },
    );
  }
}
