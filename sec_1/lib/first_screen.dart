import 'dart:html';

import 'package:flutter/material.dart';
import 'package:sec_1/second_screen.dart';

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
          child: Text("To second screen"),
          onPressed: () async {
            // Navigator.pushReplacement(
            //   context,
            //   MaterialPageRoute(
            //     builder: (_) {
            //       return SecondScreen();
            //     },
            //   ),
            // );
            // final response = await Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     settings: RouteSettings(arguments: "Chats"),
            //     builder: (_) {
            //       return SecondScreen();
            //     },
            //   ),
            // );
            final response = await Navigator.pushNamed(
              context,
              '/secondScreen/hithere',
            );

            print("response is $response");
          },
        ),
      ),
    );
  }
}
