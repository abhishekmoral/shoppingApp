import 'package:flutter/material.dart';
import 'package:mykart/utils/theme/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: UAppTheme.lightTheme,
      darkTheme: UAppTheme.darkTheme,
      home: const Center(),
    );
  }
}
