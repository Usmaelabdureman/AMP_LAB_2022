import 'package:flutter/material.dart';

class ScaffoldPropsScreen extends StatelessWidget {
  const ScaffoldPropsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Telegram")),
      body: Container(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
