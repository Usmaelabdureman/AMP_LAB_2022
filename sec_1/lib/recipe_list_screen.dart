import 'package:flutter/material.dart';
import 'package:sec_1/recipe_detail_screen.dart';
import 'package:sec_1/recipe_model.dart';

class RecipeListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Recipes")),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (BuildContext context, int index) {
          final recipe = recipes[index];

          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return RecipeDetailScreen(recipe);
                  },
                ),
              );
            },
            child: Card(
              elevation: 5,
              child: Column(
                children: [
                  Image(
                    image: AssetImage(recipe.imageUrl),
                    width: double.infinity,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                  Text(
                    recipe.name,
                    style: TextStyle(fontSize: 25),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
