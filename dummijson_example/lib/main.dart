import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'features/auth/domain/repository/user_repository.dart';
import 'features/auth/domain/repository/auth_repository.dart';
import 'app.dart';
import 'features/auth/data/service/auth_api_service.dart';

void main() {
  final authRepository = AuthRepository(AuthApiService());
  final userRepository = UserRepository();
  runApp(App(authRepository: authRepository, userRepository: userRepository));
}
