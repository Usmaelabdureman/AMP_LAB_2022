import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sec_2/second_screen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("First screen")),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            GestureDetector(
              onTap: () {
                // Navigator.pushReplacement(
                //   context,
                //   MaterialPageRoute(
                //     builder: (_) {
                //       return SecondScreen();
                //     },
                //   ),
                // );
                final d = Random().nextInt(1000);
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     settings: RouteSettings(arguments: d.toString()),
                //     builder: (_) {
                //       return SecondScreen();
                //     },
                //   ),
                // ).then((value) => print("value is $value"));
                Navigator.pushNamed(context, '/secondScreen');
              },
              child: Container(
                color: Colors.blue,
                padding: EdgeInsets.all(8),
                child: Text(
                  "To second page",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
