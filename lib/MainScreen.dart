import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:protoype_medicine/MyDoctorScreen.dart';

class MainScreen extends StatefulWidget {
  static const String id = 'mainscreen';
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          primary: false,
          automaticallyImplyLeading: false,
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Icon(Icons.notifications),
            ),
          ],
          title: Text('Health care app'),
        ),
        backgroundColor: Colors.grey[100],
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: buildCard('images/_.png', 'measurement', () {}),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: buildCard('images/doctor.png', 'Doctors', () {
                      Navigator.pushNamed(context, DoctorScreen.id);
                    }),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: buildCard('images/bag.png', 'Records', () {}),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: buildCard('images/hosbital.png', 'Symptoms', () {}),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: buildCard('images/image1.png', 'Health', () {}),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: buildCard('images/_.png', 'Treatment', () {}),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Card buildCard(String image, String text, Function onPress) {
    return Card(
      color: Colors.white,
      child: GestureDetector(
        onTap: onPress,
        child: Container(
          width: 120,
          height: 150,
          child: Column(
            children: <Widget>[
              Image.asset(
                image,
                width: 100,
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                child: Text(
                  text,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
