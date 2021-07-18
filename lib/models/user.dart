class User {
  String
      _id; // Use dynamic type because json-server id is int and firestore id is string
  String _name;
  int _age;
  String _occupation;
  String _photoUrl;
  String _login;
  String _password;

  // ignore: unnecessary_getters_setters
  get id => _id;
  // ignore: unnecessary_getters_setters
  set id(value) => _id = value;

  get name => _name;
  set name(value) => _name = value;

  get age => _age;
  set age(value) => _age = value;

  get occupation => _occupation;
  set occupation(value) => _occupation = value;

  get photoUrl => _photoUrl;
  set photoUrl(value) => _photoUrl = value;

  get login => _login;
  set login(value) => _login = value;

  get password => _password;
  set password(value) => _password = value;

  User(
      {String id = '',
      String name = '',
      String age = '',
      String occupation = '',
      String photoUrl = '',
      String login = '',
      String password = ''})
      : _id = id,
        _name = name,
        _photoUrl = photoUrl,
        _login = login,
        _password = password;

  User.copy(User from)
      : this(
            id: from.id,
            name: from.name,
            age: from.age,
            occupation: from.occupation,
            photoUrl: from.photoUrl,
            login: from.login,
            password: from.password);

  User.fromJson(Map<String, dynamic> json)
      : this(
          id: json['id'],
          name: json['name'],
          age: json['age'],
          occupation: json['occupation'],
          photoUrl: json['photoUrl'],
          login: json['login'],
          password: json['password'],
        );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'age': age,
        'occupation': occupation,
        'photoUrl': photoUrl,
        'login': login,
        'password': password,
      };
}
