import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';



class ResultPage extends StatelessWidget {
  ResultPage(this.bmiResult,this.resultText, this.interpretation);
  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 60),
          alignment: Alignment.center,
          child: const Text(
            'Result',
            style: kheaderStyle,
          ),
        ),
        Container(
          width: 370,
          height: 370,
          color: const Color(0xff333335),
          margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                resultText,
                style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none,
                    color: Colors.green.shade400),
                
              ),
              Text(
                bmiResult,
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none,
                  color: Colors.green.shade800),
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 25, horizontal: 10),
          child: Text(
            interpretation,
            style: kLableTextStyle,
          ),
        ),
        Row(
          children: [
            Expanded(
              child: TextButton(
                child: const Text(
                  'RECALCULATE',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(const Color(0xff06C46C)),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            )
          ],
        ),
      ],
    );
  }
}
