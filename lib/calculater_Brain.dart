// ignore: file_names
import 'dart:math';

import 'package:flutter/material.dart';

class CalculaterBrain {
  CalculaterBrain({@required this.height, @required this.weight});
  final int? weight;
  final int? height;
  double? _bmi;
  String calculateBMI() {
    _bmi = weight! / pow(height! / 100, 2);
    return _bmi!.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi! >= 25) {
      return 'Overweight';
    } else if (_bmi! > 18) {
      return "Normal";
    } else {
      return 'Underweight';
    }
  }

  String intepretation() {
    if (_bmi! >= 25) {
      return 'Kaam Kha Mote Faat jayega nhi to Aur Exercise bhi kaar le';
    } else if (_bmi! > 18) {
      return "Tu hi he GYM Freak Tension Maat le";
    } else {
      return 'Khaa le bsdk thora aur kum hilaya kaar';
    }
  }
}
