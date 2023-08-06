import 'dart:async';
import 'package:flutter/material.dart';

class TimerPage extends StatefulWidget {
  const TimerPage({super.key});

  @override
  State<TimerPage> createState() => _TimerPageState();
}

class _TimerPageState extends State<TimerPage> {
  bool isActive = false;
  int secondsPassed = 0;
  late Timer timer;

  handlePassedSecond() {
    if (isActive) {
      setState(() {
        secondsPassed = secondsPassed + 1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (timer == null) {
      timer = Timer.periodic(Duration(seconds: 1), (timer) {
        handlePassedSecond();
      });
    }

    int seconds = secondsPassed % 60;
    int minutes = secondsPassed ~/ 60;
    int hours = secondsPassed ~/ (60 * 60);

    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Timer"),
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TimeContainer(label: "h", value: "$hours"),
                  TimeContainer(label: "m", value: "$minutes"),
                  TimeContainer(label: "s", value: "$seconds"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        isActive = !isActive;
                      });
                    },
                    child: Text(isActive ? 'Stop' : 'Start'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TimeContainer extends StatelessWidget {
  final String label;
  final String value;

  const TimeContainer({super.key, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: const BoxDecoration(
        color: Colors.black87,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Column(children: [
        Text(
          "$value".padLeft(2, "0"),
          style: TextStyle(color: Colors.white, fontSize: 55),
        ),
        Text(
          "$label",
          style: TextStyle(
            color: Colors.white,
          ),
        )
      ]),
    );
  }
}
