import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:student_app/screens/first_page.dart';
import 'package:student_app/screens/second_page.dart';

void main() {
  runApp(App());
}

// main class
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
      routes: {
        '/secondpage': (context) => SecondPage(),
      },
    );
  }
}
