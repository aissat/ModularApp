import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:my_smart_app/app.dart';
import 'package:my_smart_app/routers/app_modules.dart';

void main() {
  runApp(
    ModularApp(
      module: AppModule(),
      child: const App(),
    ),
  );
}
