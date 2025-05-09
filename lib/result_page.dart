import 'dart:math';

import 'package:bmi_calculator/colors.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ResultPage extends StatelessWidget {
  double height = 0;
  double weight = 0;
  bool isMale = true;

  ResultPage({
    super.key,
    required this.height,
    required this.weight,
    required this.isMale,
  });

  @override
  Widget build(BuildContext context) {
    double bmiCalc = weight / pow(height / 100, 2);
    String result = '';
    switch (bmiCalc) {
      case < 18.5:
        result = "Thin";
        break;

      case >= 18.5 && < 24.9:
        result = "Normal";
        break;

      case > 24.9 && <= 29.9:
        result = "OverWeight";
        break;

      case >= 30:
        result = "obese";
        break;
    }
    return Scaffold(
      backgroundColor: isMale ? blueColor : purpleColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "BMI Is:",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 15),
            Text(
              bmiCalc.toStringAsFixed(1),
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 15),
            Text(
              result,
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 15),
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.refresh, size: 30),
            ),
          ],
        ),
      ),
    );
  }
}
