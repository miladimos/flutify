import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class BasicAnimationsPage extends StatefulWidget {
  const BasicAnimationsPage({super.key});

  @override
  State<BasicAnimationsPage> createState() => _BasicAnimationsPageState();
}

class _BasicAnimationsPageState extends State<BasicAnimationsPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation _animation;
  late Animation<Color?> _colorAnimation;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 3),
    );

    _animation = Tween(begin: 0.0, end: 200.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.bounceIn,
      ),
    );

    _colorAnimation = ColorTween(begin: Colors.amber, end: Colors.blue).animate(
        CurvedAnimation(parent: _animationController, curve: Curves.bounceOut));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnimatedBuilder(
              animation: _animationController,
              builder: (context, child) {
                return Container(
                  color: _colorAnimation.value,
                  width: _animation.value,
                  height: _animation.value,
                );
              },
            ),
            ElevatedButton(
                onPressed: () {
                  _animationController.isCompleted
                      ? _animationController.reverse()
                      : _animationController.forward();
                },
                child: Text("Start")),
          ],
        ),
      ),
    );
  }
}
