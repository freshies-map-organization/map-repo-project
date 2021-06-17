import '../../models/recipe.dart';

abstract class RecipeService {
  Future<Recipe> getRecipeById(dynamic recipeId);
  // Future<Recipe> updateCounter(Recipe counter);
}
