import 'package:flutter/material.dart';

class CommonWidgetsScreen extends StatelessWidget {
  const CommonWidgetsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(border: Border.all()),
                    child: Center(
                      child: Text(
                        "Food name",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(border: Border.all()),
                    child: Text(
                      "Food name Food name Food name Food name Food name Food name Food name Food name Food name Food name Food name ",
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(border: Border.all()),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.star),
                            Icon(Icons.star),
                            Icon(Icons.star),
                            Icon(Icons.star),
                            Icon(Icons.star),
                          ],
                        ),
                        Text("170 reviews"),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(border: Border.all()),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Icon(Icons.phone),
                            Text("PREP:"),
                            Text("28 min."),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.phone),
                            Text("PREP:"),
                            Text("28 min."),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.phone),
                            Text("PREP:"),
                            Text("28 min."),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Image(
              image: AssetImage("assets/food_1.jpeg"),
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
