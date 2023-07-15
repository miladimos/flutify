import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ClockPage extends StatefulWidget {
  const ClockPage({super.key});

  @override
  State<ClockPage> createState() => _ClockPageState();
}

class _ClockPageState extends State<ClockPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Color(0xffe3e3ed),
        child: StreamBuilder(
            stream: _clockStream(),
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              return Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: double.infinity,
                    height: double.infinity,
                    color: Color(0xff2c3143),
                  ),
                  Center(
                    child: Container(
                      alignment: Alignment.center,
                      width: 350,
                      height: 350,
                      child: Text(
                        _getCurrentTime(),
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  CircularPercentIndicator(
                    radius: 150.0,
                    lineWidth: 6.0,
                    percent: snapshot.data,
                    progressColor: Colors.green,
                    backgroundColor: Colors.transparent,
                    animation: true,
                    animateFromLastPercent: true,
                  )
                ],
              );
            }),
      ),
    );
  }
}

String _getCurrentTime() {
  String hour = DateTime.now().hour.toString().padLeft(2, "0");
  String minute = DateTime.now().minute.toString().padLeft(2, "0");
  String second = DateTime.now().second.toString().padLeft(2, "0");
  return "$hour : $minute : $second";
}

Stream _clockStream() async* {
  yield* Stream.periodic(Duration(seconds: 1), (int) {
    return DateTime.now().second / 60;
  });
}
