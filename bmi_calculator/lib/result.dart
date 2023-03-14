import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Result extends StatelessWidget {
  Result({super.key, this.bmi});

  double? bmi;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Text(
            "Your BMI is ${bmi}",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w900),
          ),
        ),
      ),
    );
  }
}
