import 'dart:ui';
import 'package:bmi_calculator_flutter/screens/results_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'constants.dart';
import 'screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme(
            color: Color(0xFF263238),
            centerTitle: true,
            titleTextStyle: TextStyle(
                color: kLabelTextColor,
                fontSize: 22.0,
                fontWeight: FontWeight.w500)),
        scaffoldBackgroundColor: const Color(0xFF263238),
      ),
      home: InputPage(),
    );
  }
}
