import 'package:flutter/material.dart';

class AnimatedIconWidget extends StatefulWidget {
  const AnimatedIconWidget({super.key});

  @override
  State<AnimatedIconWidget> createState() => _AnimatedIconWidgetState();
}

class _AnimatedIconWidgetState extends State<AnimatedIconWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  bool isChanged = false;
  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: IconButton(
          onPressed: () {
            isChanged = !isChanged;
            isChanged
                ? _animationController.forward()
                : _animationController.reverse();
          },
          iconSize: 100,
          icon: AnimatedIcon(
            icon: AnimatedIcons.play_pause,
            progress: _animationController,
          ),
        ),
      ),
    );
  }
}
