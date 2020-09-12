import 'package:flutter/material.dart';
import 'package:portfolio_app/home_page_orientation.dart';
import 'home_page.dart';

void main() => (runApp(MyApp()));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Portfolio",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

