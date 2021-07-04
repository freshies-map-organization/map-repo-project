class Ingredient {
  String _id;
  String _name;
  String _ingredientType;
  String _photoURL;

  get id => _id;
  set id(value) => _id = value;

  get name => _name;
  set name(value) => _name = value;

  get ingredientType => _ingredientType;
  set ingredientType(value) => _ingredientType = value;

  get photoURL => _photoURL;
  set photoURL(value) => _photoURL = value;

  Ingredient({
    String id = '',
    String name = '',
    String ingredientType = '',
    String photoURL = '',
  })  : _id = id,
        _name = name,
        _ingredientType = ingredientType,
        _photoURL = photoURL;

  Ingredient.copy(Ingredient from)
      : this(
            id: from._id,
            name: from._name,
            ingredientType: from._ingredientType,
            photoURL: from._photoURL);

  Ingredient.fromJson(Map<String, dynamic> json)
      : this(
            id: json['id'],
            name: json['name'],
            ingredientType: json['ingredientType'],
            photoURL: json['photoURLphotoURL']);

  Map<String, dynamic> toJson() => {
        'id': id,
        'namename': name,
        'ingredientType': ingredientType,
        'photoURL': photoURL
      };
}
