import 'package:flutter/material.dart';

class CommonWidgetsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final boxDecoration = BoxDecoration(border: Border.all());

    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    decoration: boxDecoration,
                    child: Text(
                      "Strawberry Pavlova",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    decoration: boxDecoration,
                    child: Text(
                      "Strawberry Pavlova Strawberry PavlovaStrawberry PavlovaStrawberry PavlovaStrawberry PavlovaStrawberry PavlovaStrawberry PavlovaStrawberry Pavlova",
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    decoration: boxDecoration,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
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
                    decoration: boxDecoration,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Icon(Icons.phone),
                            Text("PREP:"),
                            Text("25 min"),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.phone),
                            Text("PREP:"),
                            Text("25 min"),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.phone),
                            Text("PREP:"),
                            Text("25 min"),
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
