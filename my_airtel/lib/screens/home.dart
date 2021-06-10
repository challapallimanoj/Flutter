import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:percent_indicator/percent_indicator.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/img/airtel.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              Container(
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
                      color: Colors.grey[600],
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
              SafeArea(
                child: Row(
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(13.0, 5.0, 8.0, 0.0),
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
                                                135.0, 0.0, 0.0, 0.0),
                                            child: Card(
                                              color: Colors.blueGrey[40],
                                              elevation: 0.0,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(15.0),
                                              ),
                                              // ignore: deprecated_member_use
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
              ),
              Row(
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(25.0, 0.0, 0.0, 0.0),
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
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(210.0, 0.0, 0.0, 0.0),
                          // ignore: deprecated_member_use
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
              Container(
                color: Colors.grey[200],
                height: 8.0,
              ),
              SafeArea(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  child: Icon(
                                    Icons.credit_score_outlined,
                                    size: 35.0,
                                    color: Colors.red,
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  'Recharge',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 25.0,
                        ),
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  child: Icon(
                                    Icons.request_quote_outlined,
                                    size: 35.0,
                                    color: Colors.red,
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  'Pay Bills',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 25.0,
                        ),
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  child: Icon(
                                    Icons.local_activity_outlined,
                                    size: 35.0,
                                    color: Colors.red,
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  'My coupons',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 25.0,
                        ),
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  child: Icon(
                                    Icons.shopping_bag_outlined,
                                    size: 35.0,
                                    color: Colors.red,
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  'Shop',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 25.0,
                        ),
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  child: Icon(
                                    Icons.wifi_outlined,
                                    size: 35.0,
                                    color: Colors.red,
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  'Airtel Wifi',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 25.0,
                        ),
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  child: Icon(
                                    Icons.emoji_objects_outlined,
                                    size: 35.0,
                                    color: Colors.red,
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  'Electric Bill',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 25.0,
                        ),
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  child: Icon(
                                    Icons.account_balance_wallet_outlined,
                                    size: 35.0,
                                    color: Colors.red,
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  'Get Wallet',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 25.0,
                        ),
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  child: Icon(
                                    Icons.local_offer_outlined,
                                    size: 35.0,
                                    color: Colors.red,
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  'View Offers',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 25.0,
                        ),
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  child: Icon(
                                    Icons.headset_mic_outlined,
                                    size: 35.0,
                                    color: Colors.red,
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  'Get Support & Help ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              SafeArea(
                child: Container(
                  height: 180,
                  color: Colors.grey[300],
                  child: Column(
                    children: [
                      CarouselSlider(
                        items: [
                          //1st Image of Slider
                          Container(
                            margin: EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image: NetworkImage(
                                    "https://pbs.twimg.com/media/CcEaiX9W8AQhBpR.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          //2nd Image of Slider
                          Container(
                            margin: EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image: NetworkImage(
                                    "https://i.pinimg.com/originals/3a/12/46/3a1246b76a961431792aeb79336974ea.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),

                          //3rd Image of Slider
                          Container(
                            margin: EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image: NetworkImage(
                                    "https://pbs.twimg.com/media/DUsf07nW0AA9Rsh.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),

                          //4th Image of Slider
                          Container(
                            margin: EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image: NetworkImage(
                                    "https://pbs.twimg.com/media/DegkGffXUAYTS0x.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),

                          //5th Image of Slider
                          Container(
                            margin: EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image: NetworkImage(
                                    "https://pbs.twimg.com/media/D-I5LPhXkAAReY7.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          //6th image of slider
                          Container(
                            margin: EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image: NetworkImage(
                                    "https://pbs.twimg.com/media/DOVU9rPXUAAM2OL.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          // 7th image of slider
                          Container(
                            margin: EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image: NetworkImage(
                                    "https://i.pinimg.com/originals/71/1a/c0/711ac098556f1ab4b65016ba151d76af.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          //8th image of slider
                          Container(
                            margin: EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image: NetworkImage(
                                    "https://i0.wp.com/tuvuti.com/wp-content/uploads/2020/05/Airtel_Longhorn.jpg?resize=696%2C350&ssl=1"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],

                        //Slider Container properties
                        options: CarouselOptions(
                          height: 180.0,
                          enlargeCenterPage: true,
                          autoPlay: true,
                          aspectRatio: 16 / 9,
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enableInfiniteScroll: true,
                          autoPlayAnimationDuration:
                              Duration(milliseconds: 800),
                          viewportFraction: 0.8,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 10.0, 350.0, 5.0),
                    child: Container(
                      child: Text(
                        'Buy',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SafeArea(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        child: Icon(
                                          Icons.router_outlined,
                                          size: 35.0,
                                          color: Colors.red,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        'Broadband',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 30.0,
                            ),
                            Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      child: Icon(
                                        Icons.live_tv_outlined,
                                        size: 35.0,
                                        color: Colors.red,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      'Xstream',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 30.0,
                            ),
                            Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      child: Icon(
                                        Icons.satellite_outlined,
                                        size: 35.0,
                                        color: Colors.red,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      'DTH',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 30.0,
                            ),
                            Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      child: Icon(
                                        Icons.four_g_plus_mobiledata_outlined,
                                        size: 35.0,
                                        color: Colors.red,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      '4g PostPaid',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 30.0,
                            ),
                            Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      child: Icon(
                                        Icons.four_g_plus_mobiledata_rounded,
                                        size: 35.0,
                                        color: Colors.red,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      '4g PrePaid',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 30.0,
                            ),
                            Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      child: Icon(
                                        Icons.sim_card_outlined,
                                        size: 35.0,
                                        color: Colors.red,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      'New SimCard',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                      ),
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
              ),
              SafeArea(
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 15.0),
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          child: Container(
                            height: 200,
                            width: 450,
                          ),
                          elevation: 2.0,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                    'https://image.airtel.tv/content/LIONSGATEPLAY/MOVIE/LIONSGATEPLAY_MOVIE_JOHNWICKCHAPTER2Y2017M/John-Wick-Chapter-2_Airtel-Xstream-Featured-Banner-960X540.jpg'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                              color: Colors.black,
                            ),
                            height: 180,
                            width: 430,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      height: 375,
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(15, 0.0, 0.0, 0.0),
                          child: Row(
                            children: [
                              Card(
                                child: Icon(
                                  Icons.music_note_rounded,
                                  size: 40.0,
                                  color: Colors.redAccent,
                                ),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Card(
                                child: Icon(
                                  Icons.book,
                                  size: 40.0,
                                  color: Colors.redAccent,
                                ),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Card(
                                child: Icon(
                                  Icons.article_rounded,
                                  size: 40.0,
                                  color: Colors.redAccent,
                                ),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Card(
                                child: Icon(
                                  Icons.smart_display_rounded,
                                  size: 40.0,
                                  color: Colors.redAccent,
                                ),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Card(
                                child: Icon(
                                  Icons.sports_esports_rounded,
                                  size: 40.0,
                                  color: Colors.redAccent,
                                ),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Card(
                                child: Icon(
                                  Icons.local_movies_rounded,
                                  size: 40.0,
                                  color: Colors.redAccent,
                                ),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Card(
                                child: Icon(
                                  Icons.play_arrow_rounded,
                                  size: 40.0,
                                  color: Colors.redAccent,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
