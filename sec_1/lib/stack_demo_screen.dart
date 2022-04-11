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
                  child: Container(color: Colors.blue),
                ),
                Expanded(
                  child: Container(color: Colors.red),
                ),
              ],
            ),
            Align(
              alignment: Alignment.center,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image(
                  image: AssetImage("assets/food_1.jpeg"),
                  fit: BoxFit.cover,
                  width: 100,
                  height: 100,
                ),
              ),
            ),
            // Container(
            //   width: 200,
            //   height: 200,
            //   color: Colors.blue,
            // ),
            // Container(
            //   width: 150,
            //   height: 150,
            //   color: Colors.orange,
            // ),
            // Container(
            //   width: 100,
            //   height: 100,
            //   color: Colors.red,
            // ),
            // Positioned(
            //   right: 20,
            //   top: 15,
            //   child: Container(
            //     width: 50,
            //     height: 50,
            //     color: Colors.yellow,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
