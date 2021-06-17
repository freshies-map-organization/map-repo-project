import '../../app/dependencies.dart';
import '../../models/recipe.dart';
import '../rest.dart';
import 'recipe_service.dart';

class RecipeServiceRest implements RecipeService {
  RestService get rest => dependency();

  Future<Recipe> getRecipeById(dynamic id) async {
    final List listJson = await rest.get('recipe?id=1');
    if (listJson == null || listJson.length == 0) return null;
    return Recipe.fromJson(listJson[0]);
  }

  // Future<Recipe> updateCounter(Recipe counter){
  //   final json =
  // }
}
