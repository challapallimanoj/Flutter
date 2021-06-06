import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:percent_indicator/percent_indicator.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: SvgPicture.asset(
          'assets/svg/airtel.svg',
          width: 30,
          color: Colors.red,
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.notifications_none_outlined,
              color: Colors.black,
            ),
            tooltip: 'Show Snackbar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('No notifications')));
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.headset_mic_outlined,
              color: Colors.black,
            ),
            tooltip: 'Show Snackbar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Help under maintance')));
            },
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Get Rs. 40 >',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
      body: Card(
        child: Container(
          child: Column(
            children: [
              Container(
                color: Colors.blueGrey[200],
                child: Row(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.fromLTRB(30.0, 20.0, 20.0, 20.0),
                      child: Text(
                        'SILVER',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 95.0,
                    ),
                    Card(
                      color: Colors.grey[700],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: RichText(
                          text: TextSpan(
                              text: 'Discover',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                              children: [
                                TextSpan(
                                  text: ' airtel',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                                TextSpan(
                                  text: 'Thanks >',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ]),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(8.0, 5.0, 8.0, 0.0),
                      child: Card(
                        elevation: 5.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        child: InkWell(
                          splashColor: Colors.blue.withAlpha(30),
                          onTap: () {},
                          child: SizedBox(
                            width: 390,
                            height: 207,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          15.0, 20.0, 15.0, 0.0),
                                      child: new CircularPercentIndicator(
                                        radius: 100.0,
                                        lineWidth: 5.0,
                                        animation: true,
                                        percent: 0.7,
                                        center: new Text(
                                          "875.0.MB",
                                          style: new TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 15.0),
                                        ),
                                        footer: new Text(
                                          "Daily Data Left",
                                          style: new TextStyle(
                                              color: Colors.grey[600],
                                              fontWeight: FontWeight.w400,
                                              fontSize: 15.0),
                                        ),
                                        circularStrokeCap:
                                            CircularStrokeCap.round,
                                        progressColor: Colors.grey[700],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          15.0, 20.0, 15.0, 0.0),
                                      child: new CircularPercentIndicator(
                                        radius: 100.0,
                                        lineWidth: 5.0,
                                        animation: true,
                                        percent: 0.3,
                                        center: new Text(
                                          "8 Days",
                                          style: new TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 15.0),
                                        ),
                                        footer: new Text(
                                          "Validity",
                                          style: new TextStyle(
                                              color: Colors.grey[600],
                                              fontWeight: FontWeight.w400,
                                              fontSize: 15.0),
                                        ),
                                        circularStrokeCap:
                                            CircularStrokeCap.round,
                                        progressColor: Colors.grey[700],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          15.0, 20.0, 15.0, 0.0),
                                      child: new CircularPercentIndicator(
                                        radius: 100.0,
                                        lineWidth: 5.0,
                                        animation: true,
                                        percent: 1.0,
                                        center: new Icon(
                                            Icons.all_inclusive_outlined),
                                        footer: new Text(
                                          "Unlimited Calls",
                                          style: new TextStyle(
                                              color: Colors.grey[600],
                                              fontWeight: FontWeight.w400,
                                              fontSize: 15.0),
                                        ),
                                        circularStrokeCap:
                                            CircularStrokeCap.round,
                                        progressColor: Colors.grey[700],
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    new ButtonBar(
                                      mainAxisSize: MainAxisSize
                                          .min, // this will take space as minimum as posible(to center)
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              140.0, 0.0, 0.0, 0.0),
                                          child: Card(
                                            color: Colors.blueGrey[40],
                                            elevation: 0.0,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15.0),
                                            ),
                                            child: new FlatButton(
                                              child: new Text(
                                                'Recharge Now',
                                                style: TextStyle(
                                                  color: Colors.red,
                                                ),
                                              ),
                                              onPressed: () {},
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(25.0, 10.0, 0.0, 0.0),
                      child: Text(
                        'Manage account',
                        style: TextStyle(
                            color: Colors.grey[800],
                            fontWeight: FontWeight.w500,
                            fontSize: 15.0),
                      ),
                    ),
                  ),
                  Container(
                    child: new ButtonBar(
                      mainAxisSize: MainAxisSize
                          .min, // this will take space as minimum as posible(to center)
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(210.0, 5.0, 0.0, 0.0),
                          child: new FlatButton(
                            child: new Text(
                              'Add >',
                              style: TextStyle(
                                color: Colors.red,
                              ),
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
        showElevation: true,
        itemCornerRadius: 24,
        curve: Curves.easeIn,
        onItemSelected: (index) => setState(() => _currentIndex = index),
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: SvgPicture.asset(
              'assets/svg/airtel.svg',
              width: 20,
            ),
            title: Text('Services'),
            activeColor: Colors.red,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(
              Icons.account_balance_outlined,
              color: Colors.black,
            ),
            title: Text('Banking'),
            activeColor: Colors.amber,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(
              Icons.explore_outlined,
              color: Colors.black,
            ),
            title: Text(
              'Explore',
            ),
            activeColor: Colors.blue,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(
              Icons.menu_outlined,
              color: Colors.black,
            ),
            title: Text('More'),
            activeColor: Colors.green,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
