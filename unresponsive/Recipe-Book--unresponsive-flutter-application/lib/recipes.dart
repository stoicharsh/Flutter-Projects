class Recipe{
  String name;
  String imgPath;
  List<Ingredient> ingre;
  int servings;

  Recipe(this.name, this.imgPath, this.ingre, this.servings);

  static List<Recipe> list = [
    Recipe('Chicken Tomato Salad', 'images/img1.jpg',
    [
      Ingredient(0.750, 'Kg tomato'),
      Ingredient(2, 'medium onion'),
      Ingredient(3, 'cloves garlic'),
      Ingredient(1, 'pinches black pepper'),
      Ingredient(1, 'tablespoon virgin olive oil')
    ], 2),

    Recipe('Butterscotch Ice-Cream', 'images/img2.jpg',
    [
      Ingredient(0.75, 'cup milk'),
      Ingredient(0.125, 'cup condensed milk'),
      Ingredient(0.125, 'tsp butterscotch essence'),
      Ingredient(0.125, 'cup sugar'),
      Ingredient(0.125, 'cup powdered cashew nut'),
      Ingredient(0.33, 'tsp butter'),
    ], 2),

    Recipe('Pork Chop', 'images/img3.jpg',
    [
      Ingredient(1, 'cup vegetable oil for frying'),
      Ingredient(0.5, 'cup all-purpose flour'),
      Ingredient(0.5, 'teaspoon seasoning salt, or to taste'),
      Ingredient(4.75, 'inch thick pork chops'),
    ], 4),

    Recipe('Chocolate chip cookies', 'images/img4.jpg',
    [
      Ingredient(0.67, 'eggs'),
      Ingredient(0.8, 'teaspoon vanilla extract'),
      Ingredient(0.33, 'baking soda'),
      Ingredient(0.8, 'teaspoon hot water'),
      Ingredient(0.16, 'teaspoon salt'),
      Ingredient(0.1, 'cups all-purpose flour'),
      Ingredient(0.67, 'cup semisweet chocolate chips'),
      Ingredient(2, 'tablespoon butter, softened'),
      Ingredient(2, 'tablespoon white sugar'),
      Ingredient(2, 'tablespoon brown sugar'),
      Ingredient(3, 'tablespoon chopped walnuts'),
    ], 8),

    Recipe('Thai red curry noodle & chicken soup', 'images/img5.jpg',
    [
      Ingredient(0.5, 'tablespoon butter'),
      Ingredient(0.25, 'cup chopped onion'),
      Ingredient(0.25, 'cup chopped celery'),
      Ingredient(2, '(14.5 ounce) cans chicken broth'),
      Ingredient(0.5, '(14.5 ounce) cans vegetable broth'),
      Ingredient(1.5, 'cups egg noodles'),
      Ingredient(1, 'cups sliced carrots'),
      Ingredient(0.25, 'teaspoon dried basil'),
      Ingredient(0.25, 'teaspoon dried oregano'),
    ], 3),
    
    Recipe('Mexican Pizza', 'images/img6.jpg',
    [
      Ingredient(1.5, 'warm water'),
      Ingredient(1, 'package active dry yeast'),
      Ingredient(0.490, 'gram bread flour'),
      Ingredient(2, 'tablespoons extra virgin olive oil'),
      Ingredient(2, 'tablespoons salt'),
      Ingredient(1, 'tablespoons sugar'),
    ], 4),
  ];
}

class Ingredient{
  double quantity;
  String item;

  Ingredient(this.quantity, this.item);
}