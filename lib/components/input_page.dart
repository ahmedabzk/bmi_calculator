import 'package:bmi_calculator/components/result_page.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/reusable_container.dart';
import 'package:bmi_calculator/calculator.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;
  int height = 120;
  int weight = 40;
  int age = 15;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 10),
            alignment: Alignment.topLeft,
            child: const Text('BMI Calculator', style: kheaderStyle),
          ),
          ReusableContainer('Gender'),
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(15, 2, 15, 2),
                    width: 150,
                    height: 180,
                    color: selectedGender == Gender.male
                        ? Colors.green
                        : const Color(0xff333335),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.male,
                          color: Colors.white,
                          size: 70,
                        ),
                        Text(
                          'MALE',
                          style: TextStyle(
                            decoration: TextDecoration.none,
                            color: Colors.white,
                            fontSize: 25,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              // SizedBox(width: 10.0,),
              Expanded(
                  child: GestureDetector(
                onTap: () {
                  setState(() {
                    selectedGender = Gender.female;
                  });
                },
                child: Container(
                    margin: const EdgeInsets.fromLTRB(15, 2, 15, 2),
                    width: 150,
                    height: 180,
                    color: selectedGender == Gender.female ? Colors.green : const Color(0xff333335),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.female,
                            color: Colors.white,
                            size: 70,
                          ),
                          Text(
                            'FEMALE',
                            style: TextStyle(
                              decoration: TextDecoration.none,
                              color: Colors.white,
                              fontSize: 25,
                            ),
                          )
                        ])),
              ))
            ],
          ),
          ReusableContainer('Weight'),
          Row(
            children: [
              Expanded(
                flex: 3,
                child: SizedBox(
                  height: 70,
                  child: Card(
                    color: Colors.white,
                    margin: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 25.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                weight--;
                              });
                            },
                            child: const Icon(
                              Icons.remove_circle,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Center(
                            child: Text(
                              weight.toString(),
                              style: kTextStyleInsideTheBox,
                            ),
                          ),
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                weight++;
                              });
                            },
                            child: const Icon(
                              Icons.add_circle,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: SizedBox(
                  height: 70,
                  child: Card(
                    color: Colors.white,
                    margin: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 25.0),
                    child: Row(
                      children: const [
                        Expanded(
                          child: Center(
                            child: Text(
                              'KG',
                              style: kTextStyleInsideTheBox,
                            ),
                          ),
                        ),
                        
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          ReusableContainer('Height'),
          Row(
            children: [
              Expanded(
                flex: 3,
                child: SizedBox(
                  height: 70,
                  child: Card(
                    color: Colors.white,
                    margin: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 25.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                height--;
                              });
                            },
                            child: const Icon(
                              Icons.remove_circle,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Center(
                            child: Text(
                              height.toString(),
                              style: kTextStyleInsideTheBox,
                            ),
                          ),
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                height++;
                              });
                            },
                            child: const Icon(
                              Icons.add_circle,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: SizedBox(
                  height: 70,
                  child: Card(
                    color: Colors.white,
                    margin: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 25.0),
                    child: Row(
                      children: const [
                        Expanded(
                          child: Center(
                            child: Text(
                              'CM',
                              style: kTextStyleInsideTheBox,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          ReusableContainer('Age'),
          SizedBox(
            height: 70,
            child: Card(
              color: Colors.white,
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          age--;
                        });
                      },
                      child: const Icon(
                        Icons.remove_circle,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        age.toString(),
                        style: kTextStyleInsideTheBox,
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          age++;
                        });
                      },
                      child: const Icon(
                        Icons.add_circle,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 15),
          Row(
      children: [
        Expanded(
          child: TextButton(
            child: const Text(
              'CALCULATE',
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
              CalculatorBrain cal = CalculatorBrain(height, weight);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ResultPage(
                          cal.calculateBMI(),
                          cal.getResult(),
                          cal.getInterpretation()
                  )));
            },
          ),
        )
      ],
    ),
        ],
      ),
    );
  }
}
