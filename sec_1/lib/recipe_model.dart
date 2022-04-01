class Recipe {
  String imageUrl;
  String name;
  List<Ingredient> ingredients;
  Recipe(this.imageUrl, this.name, this.ingredients);
}

class Ingredient {
  double quantity;
  String measurement;
  String name;

  Ingredient(this.quantity, this.measurement, this.name);
}

final recipes = [
  Recipe("assets/food_1.jpeg", "Firfir", [
    Ingredient(1.5, 'tablespoon', 'Salt'),
    Ingredient(0.5, 'litre', 'Water'),
    Ingredient(2, 'tablespoon', 'Berbere'),
    Ingredient(1, '', 'Injera'),
  ]),
  Recipe("assets/food_2.jpeg", "Chechebsa", [
    Ingredient(1.5, 'tablespoon', 'Salt'),
    Ingredient(0.5, 'litre', 'Water'),
    Ingredient(2, 'tablespoon', 'Berbere'),
    Ingredient(1, '', 'Injera'),
  ]),
  Recipe("assets/food_3.jpeg", "Dinich wot", [
    Ingredient(1.5, 'tablespoon', 'Salt'),
    Ingredient(0.5, 'litre', 'Water'),
    Ingredient(2, 'tablespoon', 'Berbere'),
    Ingredient(1, '', 'Injera'),
  ]),
  Recipe("assets/food_4.jpeg", "Shiro", [
    Ingredient(1.5, 'tablespoon', 'Salt'),
    Ingredient(0.5, 'litre', 'Water'),
    Ingredient(2, 'tablespoon', 'Berbere'),
    Ingredient(1, '', 'Injera'),
  ]),
  Recipe("assets/food_5.jpeg", "Selata", [
    Ingredient(1.5, 'tablespoon', 'Salt'),
    Ingredient(0.5, 'litre', 'Water'),
    Ingredient(2, 'tablespoon', 'Berbere'),
    Ingredient(1, '', 'Injera'),
  ]),
  Recipe("assets/food_6.jpeg", "Kitfo", [
    Ingredient(1.5, 'tablespoon', 'Salt'),
    Ingredient(0.5, 'litre', 'Water'),
    Ingredient(2, 'tablespoon', 'Berbere'),
    Ingredient(1, '', 'Injera'),
  ]),
];
