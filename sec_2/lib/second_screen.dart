import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  final String title;
  final String buttonText;

  const SecondScreen({
    Key? key,
    required this.title,
    required this.buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                color: Colors.blue,
                padding: EdgeInsets.all(8),
                child: Text(
                  buttonText,
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
