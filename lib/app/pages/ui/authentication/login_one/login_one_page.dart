import 'package:flutter/material.dart';

const kWhiteColor = Color(0xffffffff);
const kMediumBlueColor = Color(0xff4a64fe);

class LoginOnePage extends StatelessWidget {
  LoginOnePage({super.key});

  final GlobalKey<FormState> _formKey = GlobalKey();

  Widget inputWidget({
    required String hintText,
    required IconData prefixIcon,
    bool obscureText = false,
    var validator,
    var onSaved,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: TextFormField(
        validator: validator,
        onSaved: onSaved,
        style: TextStyle(
          fontSize: 14,
          color: kMediumBlueColor,
        ),
        decoration: InputDecoration(
          labelText: hintText,
          labelStyle: TextStyle(
            color: kMediumBlueColor,
          ),
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: kMediumBlueColor,
            ),
          ),
          prefixIcon: Icon(
            prefixIcon,
            size: 16,
            color: kMediumBlueColor,
          ),
        ),
        obscureText: obscureText,

      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: kMediumBlueColor,
          elevation: 0,
        ),
        body: SafeArea(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 180,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: kMediumBlueColor,
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(20),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 35,
                        color: kWhiteColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        inputWidget(
                          hintText: "Email",
                          prefixIcon: Icons.mail_outline,
                          validator: (String? value) {
                            if(value!.isEmpty) return "enter email";
                          }
                        ),
                        inputWidget(
                          hintText: "Password",
                          prefixIcon: Icons.lock,
                          obscureText: true,
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 10),
                          child: const Text(
                            "Forgot Password!",
                            style: TextStyle(
                              color: kMediumBlueColor,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            if(_formKey.currentState!.validate()) {
                              _formKey.currentState!.save();
                            }
                          },
                          child: Container(
                            height: 50,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: kMediumBlueColor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            margin: EdgeInsets.symmetric(vertical: 15),
                            child: Center(
                              child: Text(
                                "Login",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
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
    );
  }
}
