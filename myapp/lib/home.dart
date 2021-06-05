import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [movingCards()],
      ),
    );
  }

  Container movingCards() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Container(
          margin: EdgeInsets.only(left: 10.0, right: 10.0),
          height: 300.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                child: Center(
                  child: Text(
                    'DJANGO',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 50.0,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.blue,
                ),
                width: 400.0,
              ),
              SizedBox(
                width: 20.0,
              ),
              Container(
                child: Center(
                  child: Text(
                    'ANGULAR',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 50.0,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.red,
                ),
                width: 400.0,
              ),
              SizedBox(
                width: 20.0,
              ),
              Container(
                child: Center(
                  child: Text(
                    'MYSQL',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 50.0,
                    ),
                  ),
                ),
                width: 400.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.green,
                ),
              ),
              SizedBox(
                width: 20.0,
              ),
              Container(
                child: Center(
                  child: Text(
                    'HTML',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 50.0,
                    ),
                  ),
                ),
                width: 400.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.amber,
                ),
              ),
              SizedBox(
                width: 20.0,
              ),
              Container(
                child: Center(
                  child: Text(
                    'CSS',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 50.0,
                    ),
                  ),
                ),
                width: 400.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.orange,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
