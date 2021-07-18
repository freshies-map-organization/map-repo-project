import '../../app/dependencies.dart';
import '../../models/recipe.dart';
import '../../models/user.dart';
import '../../services/recipe/recipe_service.dart';

import '../user/user_viewmodel.dart';
import '../main/main_viewmodel.dart';
import '../viewmodel.dart';

class HomeRecipeViewModel extends Viewmodel {
  final MainViewmodel _mainViewmodel;
  HomeRecipeViewModel({mainViewmodel}) : _mainViewmodel = mainViewmodel {
    _loadRecipe();
  }

  RecipeService get service => dependency();
  UserViewmodel get _userViewmodel => dependency();

  User get user => _userViewmodel.user;

  List<Recipe> _recipe;
  get recipe => _recipe;
  set recipe(value) => _recipe = value;

  Future<List<Recipe>> _futureRecipe;
  get futureRecipe => _futureRecipe;
  set futureRecipe(value) => _futureRecipe = value;

  void _loadRecipe() => _futureRecipe = service.getSharedRecipe();
}
