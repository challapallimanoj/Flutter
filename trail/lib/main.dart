import 'package:flutter/material.dart';
import 'package:trail/profile.dart';
import 'package:trail/settings.dart';
import 'package:trail/home.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int index = 0;

  List list = [Home(), Profile(), Settings()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: AppBar().preferredSize,
        child: SafeArea(
          child: Container(
            color: Colors.grey[400],
            child: AppBar(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25.0),
                    topRight: Radius.circular(25.0)),
              ),
              actions: [
                IconButton(
                  icon: Icon(
                    Icons.notifications,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    // do something
                  },
                )
              ],
              elevation: 0,
              iconTheme: IconThemeData(color: Colors.black),
              backgroundColor: Colors.white,
              title: Center(
                child: Text(
                  'MANOJ-APP',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      body: list[index],
      drawer: MyDrawer(
        onTap: (ctx, i) {
          setState(() {
            index = i;
            Navigator.pop(ctx);
          });
        },
      ),
    );
  }
}

class MyDrawer extends StatelessWidget {
  final Function onTap;
  MyDrawer({required this.onTap});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      child: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 35.5, 0.0, 0.0),
              child: DrawerHeader(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25.0),
                        topRight: Radius.circular(0.0)),
                    color: Colors.grey[400],
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://png.pngtree.com/thumb_back/fw800/background/20190903/pngtree-dark-abstract-background-with-black-image_313626.jpg'),
                      fit: BoxFit.cover,
                    )),
                child: Padding(
                  padding: EdgeInsets.all(6),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 60.0,
                        width: 60.0,
                        child: CircleAvatar(
                          backgroundImage: AssetImage('assets/manoj.jpg'),
                          radius: 30.0,
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Text(
                        'MANOJ.CHALLAPALLI',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 3.0,
                      ),
                      Text(
                        'challapallimanoj99@gmail.com',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.red,
              ),
              title: Text('HOME'),
              onTap: () => onTap(context, 0),
            ),
            ListTile(
              leading: Icon(
                Icons.person,
                color: Colors.lime,
              ),
              title: Text('Profile'),
              onTap: () => onTap(context, 1),
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.amber,
              ),
              title: Text('Settings'),
              onTap: () => onTap(context, 2),
            ),
            ListTile(
              leading: Icon(
                Icons.exit_to_app,
                color: Colors.black,
              ),
              title: Text('Logout'),
              onTap: () => onTap(context, 0),
            ),
          ],
        ),
      ),
    );
  }
}
