// ignore_for_file: prefer_const_constructors

import 'package:bmi_calculater/screens/input_page.dart';
import 'package:flutter/material.dart';


void main() => runApp(BMIcalculater());

class BMIcalculater extends StatelessWidget {
  const BMIcalculater({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(backgroundColor: Color(0xFF0A0E21)),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home: InputPage(),
    );
  }
}
