import 'package:flutter/material.dart';
import 'dart:math';

class BMICalculation {
  BMICalculation({this.height, this.weight});

  final double height;
  final double weight;

  double _bmi;

  String calBMI() {
    double mHeight = height / 100;
    _bmi = weight / pow(mHeight, 2);
    return _bmi.toStringAsFixed(1);
  }

  String checkOb() {
    if (_bmi >= 25) {
      return "OVER-WEIGHT";
    } else if (_bmi < 18) {
      return "UNDER-WEIGHT";
    } else {
      return "NORMAL";
    }
  }

  String checkAd() {
    if (_bmi >= 25) {
      return "You are over weighted.";
    } else if (_bmi < 18) {
      return "You are under weighted.";
    } else {
      return "Your BMI is normal, keep up with your healthy life style.";
    }
  }

  Color checkClr() {
    if (_bmi >= 25) {
      return Colors.red;
    } else if (_bmi < 18) {
      return Colors.blue;
    } else {
      return Colors.green;
    }
  }
}
