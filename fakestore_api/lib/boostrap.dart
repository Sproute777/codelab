

import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';

import 'app/dummy_app.dart';

void bootstrap(/*{required TodosApi todosApi}*/) {
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  // Bloc.observer = AppBlocObserver();

  // final todosRepository = TodosRepository(todosApi: todosApi);

  runZonedGuarded(
    () => runApp(const DummyApp( )),
    (error, stackTrace) => log(error.toString(), stackTrace: stackTrace),
  );
}