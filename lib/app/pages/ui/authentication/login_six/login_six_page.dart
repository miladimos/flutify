import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginSixPage extends StatefulWidget {
  const LoginSixPage({super.key});

  @override
  State<LoginSixPage> createState() => _LoginSixPageState();
}

class _LoginSixPageState extends State<LoginSixPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xff1b1f2d),
      ),
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 90),
                  child: Text(
                    "Welcome Back",
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 50),
                  child: Text(
                    "Login to app",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xff4a4a54),
                  ),
                  child: TextField(
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.email,
                        color: Colors.grey,
                      ),
                      hintText: 'Email',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xff4a4a54),
                  ),
                  child: TextField(
                    obscureText: true,
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.lock,
                        color: Colors.grey,
                      ),
                      hintText: 'Password',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerRight,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  width: double.infinity,
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: ConstrainedBox(
                    constraints: BoxConstraints.tightFor(
                      width: MediaQuery.of(context).size.width - 30,
                      height: 40,
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xffeeb702),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
