import '../../models/recipe.dart';
import '../../models/user.dart';
import '../user/user_viewmodel.dart';
import 'package:exercise3/services/recipe/recipe_service.dart';

import '../../app/dependencies.dart';
import '../viewmodel.dart';

class MyRecipeViewModel extends Viewmodel {
  final MyRecipeViewModel _mainViewmodel;
  MyRecipeViewModel({mainViewmodel}) : _mainViewmodel = mainViewmodel {
    _loadMyRecipe();
  }

  RecipeService get service => dependency();
  UserViewmodel get _userViewModel => dependency();

  User get user => _userViewModel.user;

  List<Recipe> _recipe;
  get recipe => _recipe;
  set recipe(value) => _recipe = value;

  Future<List<Recipe>> _futureRecipe;
  get futureRecipe => _futureRecipe;
  set futureRecipe(value) => _futureRecipe = value;

  void _loadMyRecipe() => _futureRecipe = service.getMyRecipe(user.id);
  void _loadAllRecipe() => _futureRecipe = service.getSharedRecipe();

  void deleteRecipe(id) {
    service.deleteRecipe(id: id);
  }

  void _editRecipe(int index, Recipe recipe) {
    service.updateRecipe(recipe);
  }
}
