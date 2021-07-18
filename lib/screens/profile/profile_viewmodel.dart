import '../../models/user.dart';
import '../../app/dependencies.dart';

import '../main/main_viewmodel.dart';
import '../user/user_viewmodel.dart';
import '../viewmodel.dart';

class ProfileViewModel extends Viewmodel {
  final MainViewmodel _mainViewmodel;
  ProfileViewModel({mainViewmodel}) : _mainViewmodel = mainViewmodel;

  UserViewmodel get _userViewmodel => dependency();

  User get user => _userViewmodel.user;
}
