import '../../models/ingredient.dart';

abstract class IngredientService {
  Future<List<Ingredient>> getAllIngredient();
}
