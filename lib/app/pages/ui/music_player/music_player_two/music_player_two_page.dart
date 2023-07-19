import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class MusicPlayerTwoPage extends StatefulWidget {
  const MusicPlayerTwoPage({super.key});

  @override
  State<MusicPlayerTwoPage> createState() => _MusicPlayerTwoPageState();
}

class _MusicPlayerTwoPageState extends State<MusicPlayerTwoPage> {
  double _currentSliderValue = 50;
  IconData currentPlayStatusIcon = Icons.pause;
  bool playing = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xffefefef),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.red.shade100,
          leading: IconButton(
            icon: Icon(
              Icons.chevron_left,
              size: 35,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          actions: [
            Transform.rotate(
              angle: (270 / (180 / pi)),
              child: IconButton(
                icon: Icon(
                  Icons.bar_chart,
                  color: Colors.black,
                  size: 35,
                ),
                onPressed: null,
              ),
            ),
          ],
        ),
        body: SafeArea(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 60),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        width: 245,
                        height: 330,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black,
                                offset: Offset(0, 20),
                                blurRadius: 30,
                                spreadRadius: 0),
                          ],
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(200),
                            bottomRight: Radius.circular(200),
                          ),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              // colorFilter:
                              //     ColorFilter.mode(Colors.red, BlendMode.color),
                              image: NetworkImage(
                                  "https://i.pravatar.cc/150?img=55")),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "Bad guy",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 15),
                            Text(
                              "This is subtitle",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 50),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: -45,
                        left: -40,
                        child: SleekCircularSlider(
                          min: 0,
                          max: 4,
                          initialValue: 2,
                          appearance: CircularSliderAppearance(
                            size: 360,
                            counterClockwise: true,
                            startAngle: 150,
                            angleRange: 120,
                            customWidths: CustomSliderWidths(
                              trackWidth: 3,
                              progressBarWidth: 10,
                              shadowWidth: 0,
                            ),
                            customColors: CustomSliderColors(
                              trackColor: Colors.black12,
                              progressBarColor: Colors.black,
                            ),
                            infoProperties: InfoProperties(
                              mainLabelStyle: TextStyle(
                                color: Colors.transparent,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(
                          left: 60,
                          right: 60,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            bottom: 40,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Small Talk",
                                style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text(
                                "3:10",
                                style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: SizedBox(
          height: 120,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  child: Icon(Icons.pause),
                  onTap: () {},
                ),
                Row(
                  children: [
                    Icon(Icons.fast_rewind),
                    SizedBox(width: 20),
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            offset: Offset(0, 10),
                            blurRadius: 15,
                          )
                        ],
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.pause_circle_filled,
                        size: 60,
                      ),
                    ),
                    SizedBox(width: 20),
                    Icon(Icons.fast_forward),
                  ],
                ),
                GestureDetector(
                  child: Icon(Icons.shuffle),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
