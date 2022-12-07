import 'package:auth_repository/auth_repository.dart';
import 'package:flutter/widgets.dart';
import 'package:user_repository/user_repository.dart';

import 'app.dart';

void main() {
  final authRepository = AuthRepository();
  final userRepository = UserRepository();
  runApp( App(authRepository: authRepository,userRepository: userRepository));
}
