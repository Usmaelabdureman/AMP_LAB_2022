import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  final String title;
  const SecondScreen({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Go Back"),
          onPressed: () {
            Navigator.pop(
              context,
              "From second screen",
            );
          },
        ),
      ),
    );
  }
}
