import 'package:flutter/material.dart';
import 'input_page.dart';
void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF090D22),
        ),

        scaffoldBackgroundColor: Color(0xFFA0B1D),
        accentColor: Color(0xFFFF0067)
      ),
      home: InputPage(),
    );
  }
}



