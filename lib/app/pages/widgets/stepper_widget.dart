import 'package:flutter/material.dart';

class SteperWidget extends StatefulWidget {
  const SteperWidget({super.key});

  @override
  State<SteperWidget> createState() => _SteperWidgetState();
}

class _SteperWidgetState extends State<SteperWidget> {
  var currentStepIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stepper(
          steps: const [
            Step(title: Text("Step 1"), content: Text("Step 1")),
            Step(title: Text("Step 2"), content: Text("Step 2")),
            Step(title: Text("Step 3"), content: Text("Step 3")),
          ],
          currentStep: currentStepIndex,
          onStepTapped: (int newIndex) {
            setState(() {
              currentStepIndex = newIndex;
            });
          },
          onStepContinue: () {
            if (currentStepIndex != 2) {
              setState(() {
                currentStepIndex += 1;
              });
            }
          },
          onStepCancel: () {
            if (currentStepIndex != 0) {
              setState(() {
                currentStepIndex -= 1;
              });
            }
          },
        ),
      ),
    );
  }
}
