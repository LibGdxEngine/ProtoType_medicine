import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:protoype_medicine/MainScreen.dart';

import 'Utils/GradientButton.dart';
import 'Utils/Styles.dart';

class RegistrationScreen extends StatefulWidget {
  static const String id = 'RegistrationScreen';

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
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
  int _radioValue;
  void _handleRadioValueChange(int value) {
    setState(() {
      _radioValue = value;

      switch (_radioValue) {
        case 0:
          //Male
          break;
        case 1:
          //Female
          break;
      }
    });
  }

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
                  KInputTextDecoration.copyWith(hintText: "Enter your Name"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 25.0, right: 25, bottom: 10, top: 2),
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
          Padding(
            padding: const EdgeInsets.only(
                left: 100.0, right: 100, bottom: 2, top: 25),
            child: TextField(
              textAlign: TextAlign.center,
              keyboardType: TextInputType.emailAddress,
              onChanged: (value) {},
              decoration:
                  KInputTextDecorationSmall.copyWith(hintText: "Doctor Code"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 100.0, right: 100.0, top: 50),
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
                  Navigator.pushNamed(context, MainScreen.id);
                }),
          ),
        ],
      ),
    );
  }
}
