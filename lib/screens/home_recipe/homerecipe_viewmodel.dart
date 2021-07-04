import 'package:exercise3/models/recipe.dart';
import 'package:exercise3/screens/main/main_viewmodel.dart';
import 'package:exercise3/screens/view.dart';
import '../../services/recipe/recipe_service.dart';

import '../../app/dependencies.dart';
import '../viewmodel.dart';

class HomeRecipeViewModel extends Viewmodel {
  final MainViewmodel _mainViewmodel;
  HomeRecipeViewModel({mainViewmodel}) : _mainViewmodel = mainViewmodel {
    _loadRecipe();
  }

  RecipeService get service => dependency();

  List<Recipe> _recipe;
  get recipe => _recipe;
  set recipe(value) => _recipe = value;

  Future<List<Recipe>> _futureRecipe;
  get futureRecipe => _futureRecipe;
  set futureRecipe(value) => _futureRecipe = value;

  void _loadRecipe() => _futureRecipe = service.getSharedRecipe();

  // void addRecipe(Recipe recipe) async {
  //   Recipe _recipe = service.addRecipe(recipe);
  // }
}
