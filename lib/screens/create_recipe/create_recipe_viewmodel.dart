import '../../app/dependencies.dart';
import '../../models/recipe.dart';
import '../../models/user.dart';
import '../../services/recipe/recipe_service.dart';

import '../user/user_viewmodel.dart';
import '../viewmodel.dart';

class CreateRecipeViewModel extends Viewmodel {
  RecipeService get service => dependency();
  UserViewmodel get _userViewModel => dependency();

  User get user => _userViewModel.user;

  Recipe _newRecipe = Recipe();

  String _stepOne;
  String _stepTwo;
  String _ingredientOne;
  String _ingredientTwo;
  String _title;
  String _description;

  List<String> _ingredientList;

  get ingredientList => _ingredientList;

  get recipe => _newRecipe;
  set recipe(value) => _newRecipe = value;

  get title => _title;
  set title(value) => _title = value;

  get description => _description;
  set description(value) => _description = value;

  get result => _newRecipe.result;
  set result(value) => _newRecipe.result = value;

  get shared => _newRecipe.shared;
  set shared(value) => _newRecipe.shared = value;

  get stepOne => _stepOne;
  set stepOne(value) => _stepOne = value;

  get stepTwo => _stepTwo;
  set stepTwo(value) => _stepTwo = value;

  get ingredientOne => _ingredientOne;
  set ingredientOne(value) => _ingredientOne = value;

  get ingredientTwo => _ingredientTwo;
  set ingredientTwo(value) => _ingredientTwo = value;

  get userID => user.id;

  Recipe createRecipe2() {
    Recipe recipe = new Recipe(
      title: title,
      user: user.id,
      description: description,
      step: [stepOne, stepTwo],
      ingredient: [ingredientOne, ingredientTwo],
      result: "assets/images/anna-pelzer.jpg",
      shared: "true",
    );
    return recipe;
  }

  Future<Recipe> createRecipe() async {
    Recipe recipeNew = createRecipe2();
    final Recipe recipeReturn = await service.addRecipe(recipe: recipeNew);
    return recipeReturn;
  }
}
