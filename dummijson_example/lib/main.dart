import 'package:dummijson_example/features/auth/data/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'features/auth/domain/repository/user_repository.dart';
import 'features/auth/domain/repository/auth_repository.dart';
import 'app.dart';

void main() {
  final authRepository = AuthRepository(AuthApiService(),const AuthLocalStorage());
  final userRepository = UserRepository();
  runApp(App(authRepository: authRepository, userRepository: userRepository));
}
