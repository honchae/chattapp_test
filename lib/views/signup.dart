import 'package:chatapp/widgets/widget.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  TextEditingController userNameTextEditingController = new TextEditingController();
  TextEditingController emailTextEditingController = new TextEditingController();
  TextEditingController passwordTextEditingController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarMain(context),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height- 50,
          alignment: Alignment.bottomCenter,
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              TextField(
                controller: userNameTextEditingController,
                style: simpleTextFieldStyle(),
                decoration: textFieldInputDecoration("username"),
              ),
              TextField(
                controller: emailTextEditingController,
                style: simpleTextFieldStyle(),
                decoration: textFieldInputDecoration("email"),
              ),
              TextField(
                controller: passwordTextEditingController,
                style: simpleTextFieldStyle(),
                decoration: textFieldInputDecoration("password"),
              ),
              // SizedBox(height: 10),
              // GestureDetector(
              //   onTap: () {
              //     print("tapped forgot password");
              //   },
              //   child: Container(
              //     alignment: Alignment.centerRight,
              //     child: Text(
              //       "Forgot Password?",
              //       style: TextStyle(color: Colors.white, fontSize: 14),
              //     ),
              //   ),
              // ),
              SizedBox(height: 30),
              GestureDetector(
                onTap: () {
                  print('clicked Sign Up');
                },
                child: Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Colors.blue, Colors.blueAccent]),
                      borderRadius: BorderRadius.circular(40)),
                  child: Text(
                    "Sign Up",
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                ),
              ),
              SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  print('clicked Sign Up with Google');
                },
                child: Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Text(
                    "Sign Up with Google",
                    style: TextStyle(color: Colors.black87, fontSize: 17),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Already have account?",
                    style: mediumTextStyle(),
                  ),
                  SizedBox(width: 10),
                  GestureDetector(
                      onTap: () {
                        print("clicked register");
                      },
                      child: Text(
                        "SignIn now",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            decoration: TextDecoration.underline),
                      )),
                ],
              ),
              SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}