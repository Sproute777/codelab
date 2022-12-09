import '../domain.dart';
import 'package:uuid/uuid.dart';

abstract class IUserRepository{
  Future<User?> getUser();
}

class UserRepository implements IUserRepository{
  User? _user;

  @override
  Future<User?> getUser() async {
    if (_user != null) return _user;
    return Future.delayed(
      const Duration(milliseconds: 400),
      () => _user = User(const Uuid().v4()),
    );
  }
}
