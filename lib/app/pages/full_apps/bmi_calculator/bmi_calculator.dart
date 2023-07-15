import 'package:flutify/app/pages/full_apps/bmi_calculator/bmi_constants.dart';
import 'package:flutify/app/pages/full_apps/bmi_calculator/bmi_result.dart';
import 'package:flutter/material.dart';

const activeCardColor = Color(0xFF1d1E33);
const inactiveCardColor = Color(0xFF111328);

enum Gender { male, female }

class BMICalculator extends StatefulWidget {
  const BMICalculator({super.key});

  @override
  State<BMICalculator> createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {
  Gender? selectedGender;

  int height = 160;
  int weight = 50;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0D22),
        scaffoldBackgroundColor: Color(0xFF0A0D22),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("BMI Caclculator"),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      child: CardWidget(
                        color: selectedGender == Gender.male
                            ? activeCardColor
                            : inactiveCardColor,
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.male,
                              size: 80,
                            ),
                            SizedBox(height: 15),
                            Text(
                              "Male",
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      child: CardWidget(
                        color: selectedGender == Gender.female
                            ? activeCardColor
                            : inactiveCardColor,
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.female,
                              size: 80,
                            ),
                            SizedBox(height: 15),
                            Text(
                              "Female",
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: CardWidget(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Height"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          "${height.toString()}",
                          style: TextStyle(fontSize: 50),
                        ),
                        Text("cm"),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Colors.grey,
                        thumbColor: Colors.pinkAccent,
                        trackHeight: 1,
                      ),
                      child: Slider(
                        value: height.toDouble(),
                        min: 120,
                        max: 220,
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: CardWidget(
                      child: Column(
                        children: [
                          const Text("Weight"),
                          Text(weight.toString()),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(
                                icon: Icons.add,
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                              ),
                              SizedBox(width: 10),
                              RoundIconButton(
                                icon: Icons.minimize,
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(child: CardWidget()),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                BMTCalculate calculator =
                    BMTCalculate(height: height, weight: weight);

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BMIResult(
                      bmiResult: calculator.calculateBMI(),
                      interpretation: calculator.getInterpretation(),
                      resultText: calculator.getResult(),
                    ),
                  ),
                );
              },
              child: Container(
                color: Colors.redAccent,
                margin: EdgeInsets.only(top: 10),
                width: double.infinity,
                height: 80,
                child: Text("Result"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  final Color? color;
  final Widget? child;

  CardWidget({super.key, this.color, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color ?? const Color(0xFF1D1E33),
      ),
      margin: EdgeInsets.all(15),
      child: child,
    );
  }
}

class RoundIconButton extends StatelessWidget {
  final IconData? icon;
  final VoidCallback? onPressed;
  RoundIconButton({super.key, this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onPressed,
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      constraints: BoxConstraints.tightFor(
        width: 56,
        height: 56,
      ),
      elevation: 6,
    );
  }
}
