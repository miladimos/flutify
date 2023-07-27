import 'package:count_down_time/count_down_time.dart';
import 'package:flutter/material.dart';

class CountDownTimeWidget extends StatelessWidget {
  const CountDownTimeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CountDownTime(
          timeStartInSeconds: 60,
        ),
      ),
    );
  }
}
