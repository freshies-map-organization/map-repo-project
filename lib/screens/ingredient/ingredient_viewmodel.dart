import '../../models/ingredient.dart';
import '../../services/ingredient/ingredient_service.dart';
import '../../app/dependencies.dart';

import '../viewmodel.dart';

class IngredientViewModel extends Viewmodel {
  final IngredientViewModel _ingredientViewModel;
  IngredientViewModel({ingredientViewModel})
      : _ingredientViewModel = ingredientViewModel {
    _loadIngredient();
  }

  IngredientService get service => dependency();

  List<Ingredient> _ingredient;
  get ingredient => _ingredient;
  set ingredient(value) => _ingredient = value;

  Future<List<Ingredient>> _futureIngredient;
  get futureIngredient => _futureIngredient;
  set futureIngredient(value) => _futureIngredient = value;

  void _loadIngredient() => _futureIngredient = service.getAllIngredient();
}
