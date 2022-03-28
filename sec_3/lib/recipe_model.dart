class Recipe {
  String imageUrl;
  String name;
  List<Ingredient> ingredients;
  Recipe(this.imageUrl, this.name, this.ingredients);
}

class Ingredient {
  double quantity;
  String measure;
  String name;

  Ingredient(this.quantity, this.measure, this.name);
}

final recipes = <Recipe>[
  Recipe("assets/food_1.jpeg", "Firfir", [
    Ingredient(1, '', 'Injera'),
    Ingredient(2, 'tablespoon', 'Salt'),
    Ingredient(1.5, '', 'Timatim'),
  ]),
  Recipe("assets/food_2.jpeg", "Dinich", [
    Ingredient(1.5, '', 'Injera'),
    Ingredient(1, 'tablespoon', 'Salt'),
    Ingredient(1.2, '', 'Timatim'),
  ]),
  Recipe("assets/food_3.jpeg", "Pasta", [
    Ingredient(1, '', 'Injera'),
    Ingredient(1, 'tablespoon', 'Salt'),
    Ingredient(1, '', 'Timatim'),
  ]),
  Recipe("assets/food_4.jpeg", "Qey wot", [
    Ingredient(1, '', 'Injera'),
    Ingredient(1, 'tablespoon', 'Salt'),
    Ingredient(1, '', 'Timatim'),
  ]),
  Recipe("assets/food_5.jpeg", "Tibs", [
    Ingredient(1, '', 'Injera'),
    Ingredient(1, 'tablespoon', 'Salt'),
    Ingredient(1, '', 'Timatim'),
  ]),
  Recipe("assets/food_6.jpeg", "Dulet", [
    Ingredient(1, '', 'Injera'),
    Ingredient(1, 'tablespoon', 'Salt'),
    Ingredient(1, '', 'Timatim'),
  ]),
];
