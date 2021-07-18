class Recipe {
  String _id;
  String _user;
  String _title;
  String _result;
  // bool _shared;
  String _description;
  String _shared;

  List _step;
  // int _stepCount;
  // List _amount;
  List _ingredient;

  get id => _id;
  set id(value) => _id = value;

  get user => _user;
  set user(value) => _user = value;

  get title => _title;
  set title(value) => _title = value;

  get description => _description;
  set description(value) => _description = value;

  get result => _result;
  set result(value) => _result = value;

  get shared => _shared;
  set shared(value) => _shared = value;

  get step => _step;
  // set step(value) => _step = value;

  get ingredient => _ingredient;

  // get amount => _amount;

  // get stepCount => _stepCount;
  // set stepCount(value) => _stepCount = value;

  // List listRecipe(value) {
  //   List recipe = [];
  //   _step.forEach((value) {
  //     recipe.add(value);
  //   });
  //   return recipe;
  // }

  Recipe(
      {String id = '',
      String user = '',
      String title = '',
      String result = '',
      // bool shared,
      String description = '',
      String shared,
      List ingredient,
      List step})
      : _id = id,
        _user = user,
        _title = title,
        _result = result,
        _description = description,
        _shared = shared,
        _ingredient = ingredient,
        _step = step;

  Recipe.copy(Recipe from)
      : this(
            id: from._id,
            user: from._user,
            title: from._title,
            result: from._result,
            description: from._description,
            shared: from._shared,
            ingredient: from._ingredient,
            step: from._step);

  Recipe.fromJson(Map<String, dynamic> json)
      : this(
            id: json['id'],
            user: json['user'],
            title: json['title'],
            result: json['result'],
            description: json['description'],
            shared: json['shared'],
            ingredient: json['ingredients'],
            step: json['step']);

  Map<String, dynamic> toJson() => {
        'id': id,
        'user': user,
        'title': title,
        'result': result,
        'description': description,
        'shared': shared,
        'ingredients': ingredient,
        'step': step,
      };
}
