import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/screens/screen1.dart';
import 'package:bmi_calculator/calculator.dart';

class ReusableButton extends StatelessWidget {
  ReusableButton(this.buttonText);

  final buttonText;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextButton(
            child: Text(
              buttonText,
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Color(0xff06C46C)),
            ),
            onPressed: () {
              CalculatorBrain cal = CalculatorBrain(height, weight);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ResultScreen(
                          bmiResult: cal.calculateBMI(),
                          resultText: cal.getResult(),
                          interpretation: calc.getInterpretation()
                  )));
            },
          ),
        )
      ],
    );
  }
}
