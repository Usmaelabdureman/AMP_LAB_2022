import 'package:flutter/material.dart';
import 'package:sec_2/recipe_model.dart';

class RecipeDetailScreen extends StatefulWidget {
  Recipe recipe;
  RecipeDetailScreen(this.recipe);

  @override
  State<StatefulWidget> createState() {
    return RecipeDetailState();
  }
}

class RecipeDetailState extends State<RecipeDetailScreen> {
  double servings = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.recipe.name),
      ),
      body: Column(
        children: [
          Image(
            image: AssetImage(widget.recipe.imageUrl),
            width: double.infinity,
            height: 300,
            fit: BoxFit.cover,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: widget.recipe.ingredients.length,
              itemBuilder: (BuildContext context, int index) {
                final i = widget.recipe.ingredients[index];
                return Text("${i.quantity * servings} ${i.measure} ${i.name}",
                    style: TextStyle(fontSize: 20));
              },
            ),
          ),
          Slider(
            min: 1,
            max: 20,
            value: servings,
            divisions: 19,
            label: "$servings servings",
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
