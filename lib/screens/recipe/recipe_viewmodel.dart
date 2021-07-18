import 'package:exercise3/models/recipe.dart';
import 'package:exercise3/screens/view.dart';

import '../../app/dependencies.dart';
import '../viewmodel.dart';

class RecipeViewModel extends Viewmodel {
  Recipe _recipe;

  get recipe => _recipe;
}
