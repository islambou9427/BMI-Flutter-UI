import 'package:Bmi_Calculator/Screen/Body.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});
  final int height;
  final int weight;
  double _bmi;
  double i;

  String calculatorBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(2);
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

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Your BMI is too High you need to exercise';
    } else if (_bmi > 18.5) {
      return 'Your BMI is Normal , Good Job';
    } else {
      return 'You Have a lower than normal BMI , You need To eat Batter. ';
    }
  }
}
