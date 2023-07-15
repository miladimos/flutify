import 'package:flutify/app/pages/full_apps/bmi_calculator/bmi_calculator.dart';
import 'package:flutter/material.dart';

class BMIResult extends StatelessWidget {
  final String? bmiResult, resultText, interpretation;

  const BMIResult(
      {super.key, this.bmiResult, this.resultText, this.interpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Result"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              child: Text(
                "Result",
                style: TextStyle(fontSize: 40),
              ),
            ),
          ),
          Expanded(
            child: CardWidget(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(resultText!),
                  Text(bmiResult!),
                  Column(
                    children: [
                      Text("Normal BMI Range: "),
                      Text("18.5 - 25 kg/m2"),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(interpretation!),
                  ),
                ],
              ),
            ),
            flex: 5,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              color: Colors.redAccent,
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: 80,
              child: Text("RE_Calculate"),
            ),
          )
        ],
      ),
    );
  }
}
