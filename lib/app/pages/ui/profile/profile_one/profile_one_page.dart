import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileOnePage extends StatefulWidget {
  const ProfileOnePage({super.key});

  @override
  State<ProfileOnePage> createState() => _ProfileOnePageState();
}

class _ProfileOnePageState extends State<ProfileOnePage> {
  double _currentSliderValue = 50;
  IconData currentPlayStatusIcon = Icons.pause;
  bool playing = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.arrow_left,
                          color: Colors.red,
                          size: 75,
                        ),
                        Column(
                          children: [
                            Text("Music",
                                style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w900)),
                            Text("Now playing",
                                style:
                                    TextStyle(color: Colors.red, fontSize: 18)),
                          ],
                        ),
                        Icon(
                          Icons.arrow_right,
                          color: Colors.red,
                          size: 75,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                    child: Column(
                      children: [
                        Center(
                          child: ClipRRect(
                            child: FlutterLogo(
                              size: 150,
                            ),
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                        SizedBox(height: 25),
                        Text(
                          "Music title - subtitle",
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            fontStyle: FontStyle.italic,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        SizedBox(height: 25),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            trackHeight: 7,
                            trackShape: RectangularSliderTrackShape(),
                          ),
                          child: Container(
                            width: 500,
                            child: Slider(
                              value: _currentSliderValue,
                              label: _currentSliderValue.round().toString(),
                              inactiveColor: Colors.grey.shade500,
                              activeColor: Colors.red.shade500,
                              min: 0,
                              max: 100,
                              onChanged: (double newValue) {
                                setState(() {
                                  _currentSliderValue = newValue;
                                });
                              },
                            ),
                          ),
                        ),
                        SizedBox(height: 25),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Color(0xffe8eaea),
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 25),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.skip_previous, size: 50),
                              IconButton(
                                icon: Icon(currentPlayStatusIcon),
                                iconSize: 50,
                                onPressed: () {
                                  if (!playing) {
                                    setState(() {
                                      currentPlayStatusIcon = Icons.pause;
                                      playing = true;
                                    });
                                  } else {
                                    setState(() {
                                      currentPlayStatusIcon = Icons.play_arrow;
                                      playing = false;
                                    });
                                  }
                                },
                              ),
                              Icon(Icons.skip_next, size: 50),
                            ],
                          ),
                        ),
                      ],
                    ),
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
