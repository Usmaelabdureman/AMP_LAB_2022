import 'package:flutter/material.dart';
import 'package:sec_1/stack_demo_screen.dart';

void main() {
  runApp(RecipeApp());
}

class RecipeApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StackDemoScreen(),
    );
  }
}
