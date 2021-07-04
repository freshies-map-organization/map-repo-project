import '../../models/recipe.dart';

abstract class RecipeService {
  Future<List<Recipe>> getSharedRecipe();
  Future<List<Recipe>> getMyRecipe(dynamic id);
  // Future<Recipe> updateCounter(Recipe counter);
  Future<Recipe> addRecipe({Recipe recipe});
  Future<Recipe> deleteRecipe({dynamic id});
  Future<Recipe> updateRecipe(Recipe recipe);
}
