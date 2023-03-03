import 'package:flutter/material.dart';
import 'package:monotask/views/homepage/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const Color primaryColor = Color(0xff1A4A57);
    return MaterialApp(
      title: 'Mono Task',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: primaryColor,
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: Colors.black,
              displayColor: Colors.black,
            ),
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        appBarTheme: const AppBarTheme(
          elevation: 0.0,
          backgroundColor: primaryColor,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20.20,
          ),
        ),
      ),
      home: const HomePage(),
    );
  }
}
