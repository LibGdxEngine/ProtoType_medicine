import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Utils/Styles.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'loginscreen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Content(),
    );
  }
}

class Content extends StatefulWidget {
  @override
  _ContentState createState() => _ContentState();
}

class _ContentState extends State<Content> {
  @override
  Widget build(BuildContext context) {
    double screen_width = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            width: screen_width,
            child: ColorizeAnimatedTextKit(
                onTap: () {
                  print("Tap Event");
                },
                text: [
                  "Health",
                ],
                textStyle: TextStyle(fontSize: 85.0, fontFamily: "Horizon"),
                colors: [
                  Colors.purple,
                  Colors.blue,
                  Colors.yellow,
                  Colors.blueAccent,
                ],
                textAlign: TextAlign.start,
                alignment: AlignmentDirectional.center // or Alignment.topLeft
                ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 25.0, right: 25, bottom: 10, top: 100),
            child: TextField(
              textAlign: TextAlign.center,
              keyboardType: TextInputType.emailAddress,
              onChanged: (value) {},
              decoration:
                  KInputTextDecoration.copyWith(hintText: "Enter your Email"),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 25.0, right: 25, bottom: 2, top: 2),
            child: TextField(
              textAlign: TextAlign.center,
              keyboardType: TextInputType.emailAddress,
              onChanged: (value) {},
              decoration: KInputTextDecoration.copyWith(
                  hintText: "Enter your password"),
            ),
          ),
        ],
      ),
    );
  }
}
