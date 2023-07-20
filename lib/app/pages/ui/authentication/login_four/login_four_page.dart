import 'dart:ui';

import 'package:flutter/material.dart';

class LoginFourPage extends StatelessWidget {
  const LoginFourPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: SizedBox(
              width: double.infinity,
              child: Stack(
                children: [
                  Positioned(
                    top: 200,
                    left: -100,
                    child: Container(
                      width: 300,
                      height: 300,
                      decoration: BoxDecoration(
                        color: Color(0x304599ff),
                        borderRadius: BorderRadius.all(
                          Radius.circular(150),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    right: -10,
                    child: Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                        color: Color(0x30cc33ff),
                        borderRadius: BorderRadius.all(
                          Radius.circular(100),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: 70,
                        sigmaY: 70,
                      ),
                      child: Container(),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 35),
                      child: Column(
                        children: [
                          SizedBox(height: 50),
                          Center(
                            child: SizedBox(
                              height: 80,
                              child: FlutterLogo(
                                size: 180,
                              ),
                            ),
                          ),
                          Center(
                            child: Text(
                              "Login",
                              style: TextStyle(
                                color: Color(0xff164276),
                                fontWeight: FontWeight.w900,
                                fontSize: 34,
                              ),
                            ),
                          ),
                          SizedBox(height: 100),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Email",
                                style: TextStyle(
                                    color: Color(0xff8fa1b6),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20),
                              ),
                              TextField(
                                cursorColor: Colors.redAccent,
                                decoration: InputDecoration(
                                  hintText: "Email",
                                  hintStyle: TextStyle(
                                    color: Color(0xffc5d2e1),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 20,
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xffdfe8f3),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 50),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Email",
                                style: TextStyle(
                                    color: Color(0xff8fa1b6),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20),
                              ),
                              TextField(
                                cursorColor: Colors.redAccent,
                                decoration: InputDecoration(
                                  hintText: "Email",
                                  hintStyle: TextStyle(
                                    color: Color(0xffc5d2e1),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 20,
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xffdfe8f3),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 50),
                          Container(
                            width: double.infinity,
                            height: 60,
                            decoration: BoxDecoration(
                              color: Color(0xff008fff),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            child: TextButton(
                              onPressed: () => {},
                              child: Text(
                                "Login",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w800,
                                    fontSize: 24),
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
