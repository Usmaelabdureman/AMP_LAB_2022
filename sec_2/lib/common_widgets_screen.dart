import 'package:flutter/material.dart';

class CommonWidgetsScreen extends StatelessWidget {
  const CommonWidgetsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final boxBorder = BoxDecoration(
      border: Border.all(),
    );

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
                    decoration: boxBorder,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Yehone migib",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    decoration: boxBorder,
                    child: Text(
                      "lorem dkfjalkjd flkjd lfk jslkdj lkfjlsk jdlf kjsdlk fklsjdf lksjd flkjsdl fkjsld fjlsd flkdsfds",
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    decoration: boxBorder,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                    decoration: boxBorder,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Icon(Icons.phone),
                            Text("PREV:"),
                            Text("25 min."),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.phone),
                            Text("PREV:"),
                            Text("25 min."),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.phone),
                            Text("PREV:"),
                            Text("25 min."),
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
