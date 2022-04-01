import 'package:flutter/material.dart';
import 'package:sec_1/recipe_list_screen.dart';

void main() {
  runApp(RecipeApp());
}

class RecipeApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RecipeListScreen(),
    );
  }
}
