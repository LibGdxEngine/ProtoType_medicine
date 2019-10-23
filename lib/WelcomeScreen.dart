import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:protoype_medicine/LoginScreen.dart';
import 'package:protoype_medicine/RegisterationSceen.dart';

import 'Utils/GradientButton.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcomescreen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    double screen_width = MediaQuery.of(context).size.width;
    double screen_height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: screen_width,
          decoration: BoxDecoration(
            image: DecorationImage(
              colorFilter: ColorFilter.mode(Colors.black38, BlendMode.darken),
              image: AssetImage("images/_.jpeg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    SizedBox(width: 20.0, height: 100.0),
                    Text(
                      "Be",
                      style: TextStyle(fontSize: 43.0, color: Colors.white),
                    ),
                    SizedBox(width: 20.0, height: 100.0),
                    RotateAnimatedTextKit(
                        onTap: () {
                          print("Tap Event");
                        },
                        text: [" HEALTHY", "OPTIMISTIC", "HAPPY"],
                        textStyle: TextStyle(
                            fontSize: 40.0,
                            fontFamily: "Horizon",
                            color: Colors.blue,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.start,
                        alignment: AlignmentDirectional
                            .topStart // or Alignment.topLeft
                        ),
                  ],
                ),
                SizedBox(
                  height: 200,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50.0, right: 50.0),
                  child: RaisedGradientButton(
                      child: Text(
                        'Log in',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.w600),
                      ),
                      gradient: LinearGradient(
                        colors: <Color>[Colors.white, Colors.blueAccent],
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, LoginScreen.id);
                      }),
                ),
                SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50.0, right: 50.0),
                  child: RaisedGradientButton(
                      child: Text(
                        'Sign up',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.w600),
                      ),
                      gradient: LinearGradient(
                        colors: <Color>[Colors.white, Colors.blueAccent],
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, RegistrationScreen.id);
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
