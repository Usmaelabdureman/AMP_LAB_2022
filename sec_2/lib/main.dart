import 'package:flutter/material.dart';
import 'package:sec_2/first_screen.dart';
import 'package:sec_2/second_screen.dart';

void main() {
  runApp(const RecipeApp());
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // initialRoute: '/firstScreen',
      // routes: {
      //   '/firstScreen': (BuildContext context) => FirstScreen(),
      //   '/secondScreen': (BuildContext context) => SecondScreen(),
      // },
      onGenerateRoute: (RouteSettings settings) {
        MaterialPageRoute wrap(Widget screen) {
          return MaterialPageRoute(
            builder: (_) {
              return screen;
            },
          );
        }

        print("name is ${settings.name}");

        if (settings.name == '/firstScreen' || settings.name == '/') {
          return wrap(FirstScreen());
        }

        final url = Uri.parse(settings.name!);

        if (url.pathSegments.first == 'secondScreen' &&
            url.pathSegments.length == 3) {
          return wrap(
            SecondScreen(
              title: url.pathSegments[1],
              buttonText: url.pathSegments.last,
            ),
          );
        }

        return wrap(FirstScreen());
      },
    );
  }
}
