import 'package:flutter/material.dart';

class DrawerOne extends StatefulWidget {
  const DrawerOne({super.key});

  @override
  _DrawerOneState createState() => _DrawerOneState();
}

class _DrawerOneState extends State<DrawerOne>
    with SingleTickerProviderStateMixin {
  var maxSlide = 250.0;
  var childRadius = 0.0;
  late final AnimationController _animationController =
      AnimationController(vsync: this, duration: Duration(milliseconds: 1000));

  void toggle() {
    if (_animationController.isDismissed) {
      childRadius = 40.0;
      _animationController.forward();
    } else {
      _animationController.reverse().whenComplete(() => childRadius = 0.0);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: AnimatedBuilder(
            animation: _animationController,
            builder: (context, _) {
              var slide = _animationController.value * maxSlide;
              var scale = 1 - (_animationController.value * 0.3);
              return Stack(
                children: [
                  Container(
                    color: Colors.greenAccent,
                    child: Row(
                      children: [
                        const Flexible(
                          flex: 55,
                          child: Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("App Title"),
                                ListTile(
                                  title: Text("Home"),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Flexible(
                          child: Container(),
                          flex: 45,
                        )
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(childRadius),
                      ),
                    ),
                    child: Transform(
                      transform: Matrix4.identity()
                        ..scale(scale)
                        ..translate(slide),
                      alignment: Alignment.centerLeft,
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(
                          Radius.circular(childRadius),
                        ),
                        child: Scaffold(
                          appBar: AppBar(
                            leading: IconButton(
                              icon: Icon(Icons.menu),
                              onPressed: () => toggle(),
                            ),
                          ),
                          body: Container(),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
