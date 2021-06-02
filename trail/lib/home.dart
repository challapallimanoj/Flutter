import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Wrap(
          //ROW 1
          direction: Axis.horizontal,
          children: [
            Container(
              margin: EdgeInsets.all(20.0),
              child: FlutterLogo(
                size: 60.0,
              ),
              height: 250.0,
              width: 500.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                color: Colors.cyanAccent,
              ),
            ),
            Container(
              margin: EdgeInsets.all(20.0),
              child: FlutterLogo(
                size: 60.0,
              ),
              height: 250.0,
              width: 500.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                color: Colors.cyanAccent,
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
