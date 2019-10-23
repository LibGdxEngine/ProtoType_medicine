import 'package:flutter/material.dart';

import 'Utils/Styles.dart';

class Records extends StatefulWidget {
  static const String id = 'recordscreen';
  @override
  _RecordsState createState() => _RecordsState();
}

class _RecordsState extends State<Records> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  height: 150,
                  child: TextField(
                    style: TextStyle(fontSize: 60, color: Colors.green),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    onChanged: (value) {},
                    decoration: KInputTextDecorationRecord.copyWith(
                        hintText: "Enter your measurement"),
                  ),
                ),
              ),
//              LineChartSample1(),
            ],
          ),
        ),
      ),
    );
  }
}
