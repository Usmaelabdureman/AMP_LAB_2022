import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sec_3/second_screen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First screen"),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("To Second screen"),
          onPressed: () {
            final n = Random().nextInt(1000);
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     settings: RouteSettings(arguments: "Item $n"),
            //     builder: (_) => SecondScreen(),
            //   ),
            // ).then((value) => print("response is $value"));
            Navigator.pushNamed(
              context,
              '/secondScreen',
              arguments: "Item $n",
            ).then((value) => print("response is $value"));
          },
        ),
      ),
    );
  }
}
