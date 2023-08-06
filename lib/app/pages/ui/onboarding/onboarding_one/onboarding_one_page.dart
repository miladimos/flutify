import 'package:concentric_transition/page_view.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OnboardingOnePage extends StatefulWidget {
  const OnboardingOnePage({super.key});

  @override
  State<OnboardingOnePage> createState() => _OnboardingOnePageState();
}

class _OnboardingOnePageState extends State<OnboardingOnePage> {
  List<ConcentricModel> concentrics = [
    ConcentricModel(lottie: "", text: ""),
    ConcentricModel(lottie: "", text: ""),
    ConcentricModel(lottie: "", text: ""),
    ConcentricModel(lottie: "", text: ""),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: ConcentricPageView(
            itemCount: concentrics.length,
            colors: const [
              Color.fromARGB(255, 245, 153, 198),
              Color(0xff03bca),
              Colors.white,
              Colors.yellowAccent,
            ],
            itemBuilder: (int index) {
              return Column(
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: EdgeInsets.only(top: 20, right: 20),
                      child: Text(
                        "Skip",
                        style: TextStyle(
                          color: index == 2 ? Colors.black : Colors.white,
                          fontWeight: FontWeight.w300,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 300,
                    width: 300,
                    child: Lottie.network(
                      concentrics[index].lottie,
                      animate: true,
                    ),
                  ),
                  Text(
                    concentrics[index].text,
                    style: TextStyle(
                      color: index == 2 ? Colors.black : Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Text(
                      "${index = 1} / ${concentrics.length}",
                      style: TextStyle(
                        color: index == 2 ? Colors.black : Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 22,
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

class ConcentricModel {
  final String lottie;
  final String text;

  ConcentricModel({required this.lottie, required this.text});
}
