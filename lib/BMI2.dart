import 'package:flutter/material.dart';
import 'Keyword.dart';
import 'BMI.dart';
import 'reuseableWidget.dart';

class BMI2 extends StatelessWidget {
  BMI2({
    Key? key,
    required this.bmiValue,
  }) : super(key: key);
  final bmiValue;
  late String text = "";

  bmiText() {
    var value = bmiValue;
    if (value < 18.5) {
      text = 'Under Weight';
    } else if (value < 25) {
      text = 'Normal Weight';
    } else if (value < 29.9) {
      text = 'Over Weight';
    } else {
      text = 'Obese';
    }
    return text;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0b0c20),
      appBar: AppBar(
        centerTitle: true,
        title: Text(" BMI CALCULATOR"),
        backgroundColor: Color(0xFF13153B),
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 30,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 560.0),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 100,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            " Your Result",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 50,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: colorKey,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                height: 500,
                width: 400,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '${bmiText()}',
                        style: TextStyle(
                          fontSize: 40.0,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 50.0, bottom: 50.0),
                        child: Text(
                          '${bmiValue.toStringAsFixed(1)}',
                          style: TextStyle(
                              fontSize: 100.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                        'You have ${text}',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 25.0),
                child: SizedBox(
                  width: 350.0,
                  height: 40,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                      primary: Color(0xFFea1556),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(" RE-CALCULATE YOUR BMI"),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
