import 'package:flutter/material.dart';
import 'package:sec_3/recipe_detail_screen.dart';
import 'package:sec_3/recipe_model.dart';

class RecipeListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Recipes"),
      ),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (_, int index) {
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
                  Container(
                    height: 300,
                    width: double.infinity,
                    color: Colors.red,
                    margin: const EdgeInsets.all(8),
                    child: Image(
                      image: AssetImage(recipe.imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text(recipe.name, style: const TextStyle(fontSize: 20)),
                  Container(height: 5),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
