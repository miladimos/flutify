import 'dart:math';

import 'package:flutter/material.dart';

const kLabelTextStyle = TextStyle();

class BMTCalculate {
  final int? height;
  final int? weight;

  double _bmi = 0;

  BMTCalculate({required this.height, required this.weight});

  String calculateBMI() {
    _bmi = weight! / pow(height! / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight.';
    } else if (_bmi >= 18.5) {
      return 'You have a normal body weight';
    } else {
      return 'You have a lower than normal body weight';
    }
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }
}
