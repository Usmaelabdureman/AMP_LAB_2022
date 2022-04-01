import 'package:flutter/material.dart';
import 'package:sec_1/recipe_model.dart';

class RecipeDetailScreen extends StatefulWidget {
  const RecipeDetailScreen(this.recipe, {Key? key}) : super(key: key);
  final Recipe recipe;

  @override
  State<StatefulWidget> createState() {
    return RecipeDetailState();
  }
}

class RecipeDetailState extends State<RecipeDetailScreen> {
  double servings = 1;

  @override
  Widget build(BuildContext context) {
    final recipe = widget.recipe;

    return Scaffold(
      appBar: AppBar(
        title: Text(recipe.name),
      ),
      body: Column(
        children: [
          Image(
            image: AssetImage(recipe.imageUrl),
            width: double.infinity,
            height: 300,
            fit: BoxFit.cover,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: recipe.ingredients.length,
              itemBuilder: (BuildContext context, int index) {
                final ingredient = recipe.ingredients[index];
                return Text(
                  "${ingredient.quantity * servings} ${ingredient.measurement} ${ingredient.name}",
                  style: TextStyle(fontSize: 20),
                );
              },
            ),
          ),
          Slider(
            min: 1,
            max: 20,
            value: servings,
            divisions: 19,
            label: '$servings servings',
            onChanged: (double newValue) {
              setState(() {
                servings = newValue;
              });
            },
          ),
        ],
      ),
    );
  }
}
