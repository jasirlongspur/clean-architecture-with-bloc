import 'package:flutter/material.dart';

import 'package:sample_project/presentation/main_page/main_page_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData.dark(
          useMaterial3: true,
        ),
        home: MainPageScreen());
  }
}
