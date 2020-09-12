import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_app/widgets.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        title: Text("Portfolio"),
      ),
      backgroundColor: Colors.deepPurpleAccent[700],
      body: Center(
        child: Container(
          height: 620,
          width: 400,
          child: ProfilePage(), ),
      ),
      drawer: EmailSection(),
    );
  }
}