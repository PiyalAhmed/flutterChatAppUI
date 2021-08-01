import 'package:chatui/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Chat UI',
        theme: ThemeData(
          primaryColor: Colors.red,
          accentColor: const Color(0xfffef9eb),
        ),
        debugShowCheckedModeBanner: false,
        home: const HomePage());
  }
}
