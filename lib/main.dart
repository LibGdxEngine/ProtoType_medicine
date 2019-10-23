import 'package:flutter/material.dart';
import 'package:protoype_medicine/MainScreen.dart';
import 'package:protoype_medicine/MyDoctorScreen.dart';
import 'package:protoype_medicine/NormalScreen.dart';
import 'package:protoype_medicine/RecordsScreen.dart';

import 'LoginScreen.dart';
import 'RegisterationSceen.dart';
import 'WelcomeScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Records.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        Records.id: (context) => Records(),
        MainScreen.id: (context) => MainScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        DoctorScreen.id: (context) => DoctorScreen(),
        NormalScreen.id: (context) => NormalScreen(),
      },
    );
  }
}
