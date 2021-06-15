import 'recipe_step.dart';

class Recipe {
  String _title;
  List<RecipeStep> _step;
  int _stepCount;

  get title => _title;
  set title(value) => _title = value;

  get step => _step;

  get stepCount => _stepCount;
  set stepCount(value) => _stepCount = value;

  Recipe({title, step})
      : _title = title,
        _step = step;
}
