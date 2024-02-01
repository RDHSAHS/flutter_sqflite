import 'package:flutter/material.dart';
import 'package:flutter_base/src/screens/home_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.tealAccent),
        useMaterial3: true,
      ),
      home: const Home(key: Key('home_page'), title: 'Home Page'),
      // Add the named key parameter here
    );
  }
}
