import 'package:flutter/material.dart';
import 'package:sec_3/recipe_model.dart';

class RecipeDetailScreen extends StatefulWidget {
  Recipe recipe;
  RecipeDetailScreen(this.recipe);

  @override
  State<StatefulWidget> createState() {
    return RecipeDetailScreenState();
  }
}

class RecipeDetailScreenState extends State<RecipeDetailScreen> {
  double servings = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.recipe.name)),
      body: Column(
        children: [
          Image.asset(
            widget.recipe.imageUrl,
            height: 300,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: widget.recipe.ingredients.length,
              itemBuilder: (BuildContext context, int index) {
                final ingredient = widget.recipe.ingredients[index];

                return Text(
                  "${ingredient.quantity * servings} ${ingredient.measure} ${ingredient.name}",
                  style: const TextStyle(fontSize: 20),
                );
              },
            ),
          ),
          Slider(
            min: 1,
            max: 20,
            value: servings,
            divisions: 19,
            label: "$servings servings",
            onChanged: (double currentValue) {
              setState(() {
                servings = currentValue;
              });
            },
          ),
        ],
      ),
    );
  }
}
