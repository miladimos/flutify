import 'package:flutter/material.dart';

class LoginTwoPage extends StatefulWidget {
  const LoginTwoPage({super.key});

  @override
  State<LoginTwoPage> createState() => _LoginTwoPageState();
}

class _LoginTwoPageState extends State<LoginTwoPage> {
  Widget InputWidget() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: TextFormField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: "Enter your email",
          hintStyle: TextStyle(color: Colors.grey),
          prefixIcon: Icon(Icons.mail),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(40),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40),
            borderSide: BorderSide(
              color: Colors.transparent,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // appBar: AppBar(),
        body: SafeArea(
            child: Container(
          color: Colors.grey.shade200,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 300,
                decoration: const BoxDecoration(
                  color: Colors.orange,
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(90)),
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    FlutterLogo(
                      size: 150,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: EdgeInsets.only(right: 20, top: 10),
                        child: Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  child: Column(
                    children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                        child: Column(
                          children: [
                            InputWidget(),
                            InputWidget(),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Text("Forgot Password?"),
                            ),
                            ElevatedButton(
                              onPressed: null,
                              child: Text("Login"),

                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.only(bottom: 20),
                        child: Text("Dont't have an account? "),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
