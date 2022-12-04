import 'package:flutter/widgets.dart';

import 'boostrap.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // final todosApi = LocalStorageTodosApi(
  //   plugin: await SharedPreferences.getInstance(),
  // );

  bootstrap(/*todosApi: todosApi*/);
}