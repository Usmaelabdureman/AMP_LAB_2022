import 'package:flutter/material.dart';

class StackDemoScreen extends StatelessWidget {
  const StackDemoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: 200,
        height: 200,
        child: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.blue,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.red,
                  ),
                ),
              ],
            ),
            Align(
              child: Container(
                width: 100,
                height: 100,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    "assets/food_1.jpeg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            // Container(
            //   width: 200,
            //   height: 200,
            //   color: Colors.blue,
            // ),
            // Container(
            //   width: 100,
            //   height: 100,
            //   color: Colors.red,
            // ),
            // Align(
            //   alignment: Alignment.centerLeft,
            //   child: Container(
            //     width: 50,
            //     height: 50,
            //     color: Colors.yellow,
            //   ),
            // ),
            // Positioned(
            //   bottom: 20,
            //   right: 20,
            //   child: Container(
            //     width: 50,
            //     height: 50,
            //     color: Colors.green,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
