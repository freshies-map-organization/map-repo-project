import '../../models/ingredient.dart';

import '../../app/dependencies.dart';
import 'ingredient_service.dart';
import '../rest.dart';

class IngredientServiceRest implements IngredientService {
  RestService get rest => dependency();

  Future<List<Ingredient>> getAllIngredient() async{
    final List listJson = await rest.get('ingredients');
    if (listJson == null || listJson.length == 0) return null;
    return listJson.map((json) => Ingredient.fromJson(json)).toList();
  }
}
