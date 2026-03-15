import 'package:flutter/material.dart';

import 'package:mykart/my_app.dart';

void main() {
  /// widgets flutter Binding
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  /// Flutter Native Splash
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  runApp(const MyApp());
}
