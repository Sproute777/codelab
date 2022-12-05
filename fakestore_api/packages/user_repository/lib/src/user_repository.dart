import 'package:uuid/uuid.dart';
import 'package:user_repository/src/models/models.dart';

class UserRepository {
  User? _user;

  Future<User?> getUser() async {
    if (_user != null) return _user;
    return Future.delayed(
      const Duration(milliseconds: 400),
      () => _user = User(const Uuid().v4()),
    );
  }
}
