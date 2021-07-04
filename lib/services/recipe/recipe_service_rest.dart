import '../../models/recipe.dart';

import '../../app/dependencies.dart';
import 'recipe_service.dart';
import '../rest.dart';

class RecipeServiceRest implements RecipeService {
  RestService get rest => dependency();

  Future<List<Recipe>> getSharedRecipe() async {
    final List listJson = await rest.get('recipes?shared=true');
    if (listJson == null || listJson.length == 0) return null;
    return listJson.map((json) => Recipe.fromJson(json)).toList();
  }

  Future<List<Recipe>> getMyRecipe(id) async {
    final List listJson = await rest.get('recipes?user=$id');
    if (listJson == null || listJson.length == 0) return null;
    return listJson.map((json) => Recipe.fromJson(json)).toList();
  }

  Future<Recipe> addRecipe({Recipe recipe}) async {
    final json = await rest.post('recipes', data: recipe);
    return Recipe.fromJson(json);
  }

  Future<Recipe> deleteRecipe({dynamic id}) async {
    final json = await rest.delete('recipes/$id');
    return Recipe.fromJson(json);
  }

  Future<Recipe> updateRecipe(Recipe recipe) async {
    final json = await rest.put('recipes', data: recipe);
    return Recipe.fromJson(json);
  }
}
