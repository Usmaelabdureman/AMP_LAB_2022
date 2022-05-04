import 'package:flutter/material.dart';
import 'package:sec_3/first_screen.dart';
import 'package:sec_3/second_screen.dart';

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
      // home: FirstScreen(),
      // initialRoute: '/firstScreen',
      // routes: {
      //   '/firstScreen': (BuildContext context) => FirstScreen(),
      //   '/secondScreen': (BuildContext context) => SecondScreen(),
      // },
      onGenerateRoute: (RouteSettings settings) {
        MaterialPageRoute wrap(Widget screen, {RouteSettings? settings}) {
          return MaterialPageRoute(
            settings: settings,
            builder: (_) => screen,
          );
        }

        if (settings.name == '/firstScreen' || settings.name == '/') {
          return wrap(FirstScreen());
        }

        // /secondScreen/whatever
        final url = Uri.parse(settings.name!);

        if (url.pathSegments.first == 'secondScreen' &&
            url.pathSegments.length == 2) {
          return wrap(
            SecondScreen(),
            settings: RouteSettings(
              name: settings.name,
              arguments: url.pathSegments.last,
            ),
          );
        }
      },
    );
  }
}
