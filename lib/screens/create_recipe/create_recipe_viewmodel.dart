import 'package:exercise3/models/recipe.dart';
import 'package:exercise3/models/user.dart';
import 'package:exercise3/screens/user/user_viewmodel.dart';
import 'package:exercise3/services/recipe/recipe_service.dart';

import '../../app/dependencies.dart';
import '../viewmodel.dart';

class CreateRecipeViewModel extends Viewmodel {
  RecipeService get service => dependency();
  UserViewmodel get _userViewModel => dependency();

  User get user => _userViewModel.user;

  // Recipe get recipe => service.recipe;

  Recipe _newRecipe = Recipe();

  String _stepOne;
  String _stepTwo;
  String _ingredientOne;
  String _ingredientTwo;

  get recipe => _newRecipe;
  set recipe(value) => _newRecipe = value;

  get title => _newRecipe.title;
  set title(value) => _newRecipe.title = value;

  // get user => _newRecipe.user;
  // set user(value) => _newRecipe.user = value;

  get result => _newRecipe.result;
  set result(value) => _newRecipe.result = value;

  get shared => _newRecipe.shared;
  set shared(value) => _newRecipe.shared = value;

  // get step => _newRecipe.step;
  // set step(value) => _newRecipe.step = value;

  get stepOne => _stepOne;
  set stepOne(value) => stepOne = value;

  get stepTwo => _stepTwo;
  set stepTwo(value) => stepTwo = value;

  get ingredientOne => _ingredientOne;
  set ingredientOne(value) => _ingredientOne = value;

  get ingredientTwo => _ingredientTwo;
  set ingredientTwo(value) => _ingredientTwo = value;

  // get user => _user;

  get userID => user.id;

  Recipe createRecipe2() {
    Recipe recipe = new Recipe(
      title: title,
      user: user.id,
      step: [stepOne, stepTwo],
      ingredient: [ingredientOne, ingredientTwo],
      result: "assets/images/anna-pelzer.jpg",
      shared: "true",
    );
    return recipe;
  }

  Future<Recipe> createRecipe() async {
    // turnBusy();
    Recipe recipeNew = createRecipe2();
    final Recipe recipeReturn = await service.addRecipe(recipe: recipeNew);
    return recipeReturn;
  }

  // Future selectFile
}
