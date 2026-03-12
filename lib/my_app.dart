import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        useMaterial3: true,

        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const Center(),
    );
  }
}
