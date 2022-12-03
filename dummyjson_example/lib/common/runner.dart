

import 'dart:async';

import 'package:flutter/cupertino.dart';

import 'dummy_app.dart';

abstract class AppRunner {
  Future<void> run() async {
    runZonedGuarded(() {
      runApp(const DummyApp());
    }, (error, stack) {});
  }
}
