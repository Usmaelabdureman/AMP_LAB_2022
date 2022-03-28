import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Application"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("You have clicked the button this many times"),
            Text(
              "$count",
              style: const TextStyle(fontSize: 30),
            ),
            parityText(),
            Container(
              width: 100.0 + count,
              height: 100.0 + count,
              color: const Color(0xFFF00000),
              child: Center(
                child: Text(
                  "Hello",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0 + count,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: icon(),
        onPressed: () {
          setState(() {
            count++;
          });
        },
      ),
    );
  }

  Widget parityText() {
    if (count % 2 == 0) {
      return Text("Even");
    }

    return Text("Odd");
  }

  Widget icon() {
    if (count % 2 == 0) {
      return Icon(Icons.add);
    }

    return Icon(Icons.phone);
  }
}
