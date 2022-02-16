import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class ReusableContainer extends StatelessWidget {
  ReusableContainer(this.headerText);

  final headerText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15.0),
      alignment: Alignment.topLeft,
      child:  Text(
        headerText,
        style: kLableTextStyle,
      ),
    );
  }
}
