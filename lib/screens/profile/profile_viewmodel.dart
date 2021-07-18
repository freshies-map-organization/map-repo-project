import 'package:exercise3/models/user.dart';
import 'package:exercise3/screens/main/main_viewmodel.dart';
import 'package:exercise3/screens/user/user_viewmodel.dart';

import '../../app/dependencies.dart';
import '../viewmodel.dart';

class ProfileViewModel extends Viewmodel {
  final MainViewmodel _mainViewmodel;
  ProfileViewModel({mainViewmodel}) : _mainViewmodel = mainViewmodel;

  UserViewmodel get _userViewmodel => dependency();

  User get user => _userViewmodel.user;
}
