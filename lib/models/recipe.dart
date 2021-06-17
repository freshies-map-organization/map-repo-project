class Recipe {
  dynamic _id;
  String _user;
  String _title;
  String _result;

  List _step;
  int _stepCount;
  List _amount;
  List _ingredient;

  get id => _id;
  set id(value) => _id = value;

  get user => _user;
  set user(value) => _user = value;

  get title => _title;
  set title(value) => _title = value;

  get result => _result;
  set result(value) => _result = value;

  get step => _step;

  get amount => _amount;

  get ingredient => _ingredient;

  get stepCount => _stepCount;
  set stepCount(value) => _stepCount = value;

  Recipe({id, user, title, result})
      : _id = id,
        _user = user,
        _title = title,
        _result = result;
  // _step = step;

  Recipe.copy(Recipe from)
      : this(
            id: from._id,
            user: from._user,
            title: from._title,
            result: from._result);

  Recipe.fromJson(Map<String, dynamic> json)
      : this(
          id: json['id'],
          user: json['user'],
          title: json['title'],
          result: json['result'],
        );

  Map<String, dynamic> toJson() =>
      {'id': id, 'user': user, 'title': title, 'result': result};
}
