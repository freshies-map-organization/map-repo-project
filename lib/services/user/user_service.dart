import '../../models/user.dart';

abstract class UserService {
  Future<User> getUser(dynamic userId);
  Future<User> updateUser(User user);
}
