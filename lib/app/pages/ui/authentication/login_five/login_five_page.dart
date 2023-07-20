import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginFivePage extends StatefulWidget {
  const LoginFivePage({super.key});

  @override
  State<LoginFivePage> createState() => _LoginFivePageState();
}

class _LoginFivePageState extends State<LoginFivePage> {
  final kHintTextStyle = TextStyle(
    color: Colors.white54,
    fontFamily: 'OpenSans',
  );

//label color
  final kLabelStyle = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontFamily: 'OpenSans',
  );

//box color
  final kBoxDecorationStyle = BoxDecoration(
    color: Color(0xFFC6B299).withOpacity(0.3),
    borderRadius: BorderRadius.circular(10.0),
    boxShadow: [
      BoxShadow(
        color: Colors.yellowAccent.withOpacity(0.1),
        blurRadius: 6.0,
        offset: Offset(0, 2),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: AnnotatedRegion(
            value: SystemUiOverlayStyle.light,
            child: GestureDetector(
              onTap: () => FocusScope.of(context).unfocus(),
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                            "assets/images/login_five/background.jpg"),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.7),
                          BlendMode.darken,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: double.infinity,
                    child: SingleChildScrollView(
                      physics: AlwaysScrollableScrollPhysics(),
                      padding: EdgeInsets.symmetric(
                        horizontal: 40,
                        vertical: 320,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            "Login",
                            style: TextStyle(
                              color: Colors.yellowAccent,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 30),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Email",
                                style: kLabelStyle,
                              ),
                              SizedBox(height: 10),
                              Container(
                                alignment: Alignment.centerLeft,
                                decoration: kBoxDecorationStyle,
                                height: 60,
                                child: TextField(
                                  keyboardType: TextInputType.emailAddress,
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.only(top: 14),
                                    prefixIcon:
                                        Icon(Icons.mail, color: Colors.white),
                                    hintText: "Email",
                                    hintStyle: kHintTextStyle,
                                  ),
                                ),
                              ),
                              Container(
                                height: 20,
                                child: Row(
                                  children: [
                                    Theme(
                                      data: ThemeData(
                                          unselectedWidgetColor: Colors.white),
                                      child: Checkbox(
                                        value: true,
                                        checkColor: Colors.green,
                                        activeColor: Colors.yellowAccent,
                                        onChanged: (value) {
                                          // setState(() {
                                          //   false = value;
                                          // });
                                        },
                                      ),
                                    ),
                                    Text(
                                      'Remember me',
                                      style: kLabelStyle,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Center(
                                child: GestureDetector(
                                  onTap: null,
                                  child: RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'Don\'t have an Account? ',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        TextSpan(
                                          text: 'Sign Up',
                                          style: TextStyle(
                                            color: Colors.yellowAccent,
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
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
