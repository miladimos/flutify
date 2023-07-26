import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AnimatedCrossFadeWidget extends StatefulWidget {
  const AnimatedCrossFadeWidget({super.key});

  @override
  State<AnimatedCrossFadeWidget> createState() =>
      _AnimatedCrossFadeWidgetState();
}

class _AnimatedCrossFadeWidgetState extends State<AnimatedCrossFadeWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedCrossFade(
          crossFadeState: CrossFadeState.showFirst,
          duration: Duration(milliseconds: 500),
          firstChild: Container(),
          secondChild: Container(),
        ),
      ),
    );
  }
}
