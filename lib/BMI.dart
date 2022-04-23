import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'round_icon_button.dart';
import 'package:flutter/material.dart';
import 'BMI2.dart';
import 'reuseableWidget.dart';
import 'ChildW.dart';
import 'Keyword.dart';
import 'BMI2.dart';

enum gender { male, female }

class BMI extends StatefulWidget {
  const BMI({Key? key}) : super(key: key);

  @override
  State<BMI> createState() => _BMIState();
}

class _BMIState extends State<BMI> {
  gender? selectedgender;
  double? height = 130;
  int age = 20;
  int weight = 50;
  static const activeCardColor = Color(0xFFea1556);
  static const inactiveColor = Color(0xFF272A4D);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0b0c20),
      appBar: AppBar(
        leading: Icon(Icons.menu),
        centerTitle: true,
        title: Text(" BMI CALCULATOR"),
        backgroundColor: Color(0xFF13153B),
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 30,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 560.0),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        print("Male");
                        setState(() {
                          selectedgender = gender.male;
                        });
                      },
                      child: reuseableWidget(
                        nwidth: 200.0,
                        color: selectedgender == gender.male
                            ? activeCardColor
                            : inactiveColor,
                        newchild: ChildW(
                          nicon: Icon(
                            Icons.male,
                            size: 100,
                          ),
                          ntext: Text(
                            "MALE",
                            style: TextKey,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        print("Female");
                        setState(() {
                          selectedgender = gender.female;
                        });
                      },
                      child: reuseableWidget(
                        nwidth: 200.0,
                        color: selectedgender == gender.female
                            ? activeCardColor
                            : inactiveColor,
                        newchild: ChildW(
                          nicon: Icon(
                            Icons.female,
                            size: 100,
                          ),
                          ntext: Text("FEMALE", style: TextKey),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 560.0),
                child: Row(
                  children: [
                    reuseableWidget(
                      nwidth: 400.0,
                      color: colorKey,
                      newchild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Height", style: TextKey),
                                ],
                              ),
                            ],
                          ),
                          RichText(
                            text: TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                  text: '${height?.round()}',
                                  style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const TextSpan(
                                    text: 'cm',
                                    style: TextStyle(color: Colors.white)),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: SliderTheme(
                                data: SliderTheme.of(context).copyWith(
                                    thumbColor: Color(0xFFea1556),
                                    inactiveTrackColor:
                                        Color.fromARGB(255, 127, 129, 130),
                                    activeTrackColor: Colors.white),
                                child: Slider(
                                    min: 80,
                                    max: 300,
                                    value: height!,
                                    onChanged: (value) {
                                      print(value.round());
                                      setState(() {
                                        height = value;
                                      });
                                    }),
                              )),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 560),
                child: Row(
                  children: [
                    reuseableWidget(
                      nwidth: 200.0,
                      color: colorKey,
                      newchild: ChildW(
                        ntext: Column(
                          children: [
                            Text("WEIGHT", style: TextKey),
                            Text(
                              "$weight",
                              style: TextStyle(
                                fontSize: 30.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        nicon: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              onPress: () {
                                setState(() {
                                  weight--;
                                });
                              },
                              icon: FontAwesomeIcons.minus,
                            ),
                            const SizedBox(width: 10),
                            RoundIconButton(
                              onPress: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              icon: FontAwesomeIcons.plus,
                            ),
                          ],
                        ),
                      ),
                    ),
                    reuseableWidget(
                      nwidth: 200.0,
                      color: colorKey,
                      newchild: ChildW(
                        ntext: Column(
                          children: [
                            Text("AGE", style: TextKey),
                            Text(
                              "$age",
                              style: TextStyle(
                                fontSize: 30.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        nicon: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              onPress: () {
                                setState(() {
                                  age--;
                                });
                              },
                              icon: FontAwesomeIcons.minus,
                            ),
                            const SizedBox(width: 10),
                            RoundIconButton(
                              onPress: () {
                                setState(() {
                                  age++;
                                });
                              },
                              icon: FontAwesomeIcons.plus,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 350.0,
                height: 40,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    primary: Color(0xFFea1556),
                  ),
                  onPressed: () {
                    var bmi;
                    bmi = (weight / height!.toInt() / height!.toInt()) * 10000;
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => BMI2(
                                  bmiValue: bmi,
                                ))));
                  },
                  child: Text(" CALCULATE YOUR BMI"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
