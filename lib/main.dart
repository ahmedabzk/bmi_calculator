import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/input_page.dart';

void main() {
  runApp(const BmiCalculator());
}

class BmiCalculator extends StatelessWidget {
  const BmiCalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: const Color(0xff000002),
          scaffoldBackgroundColor: const Color(0xff000002)
        ),
        home: const InputPage());
  }
}

