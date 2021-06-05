import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          movingCards(),
          header(),
          section(),
        ],
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
              InkWell(
                onTap: () {},
                child: Container(
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
              ),
              SizedBox(
                width: 20.0,
              ),
              InkWell(
                onTap: () {},
                child: Container(
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
              ),
              SizedBox(
                width: 20.0,
              ),
              InkWell(
                onTap: () {},
                child: Container(
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
              ),
              SizedBox(
                width: 20.0,
              ),
              InkWell(
                onTap: () {},
                child: Container(
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
              ),
              SizedBox(
                width: 20.0,
              ),
              InkWell(
                onTap: () {},
                child: Container(
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
              ),
              SizedBox(
                height: 20.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Container header() {
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
          child: Text(
            'Latest Content',
            style: TextStyle(
              color: Colors.black,
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    ),
  );
}

Container section() {
  return Container(
    child: Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        children: [
          Card(
            elevation: 50,
            shadowColor: Colors.black,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  leading: Icon(
                    Icons.open_in_new_rounded,
                    color: Colors.green,
                  ),
                  title: Padding(
                    padding: EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 0.0),
                    child: Text(
                      'Framework : django',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                  ),
                  subtitle: Padding(
                    padding: EdgeInsets.fromLTRB(0.0, 15.0, 8.0, 0.0),
                    child: Text(
                      'Topic : Django complete setup for vscode.',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                        color: Colors.amber,
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    TextButton(
                      child: const Text('OPEN VIDEO'),
                      onPressed: () {/* ... */},
                    ),
                    const SizedBox(width: 8),
                    TextButton(
                      child: const Text(
                        'BLOG',
                      ),
                      onPressed: () {/* ... */},
                    ),
                  ],
                ),
              ],
            ),
          ),
          Card(
            elevation: 50,
            shadowColor: Colors.black,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  leading: Icon(
                    Icons.open_in_new_rounded,
                    color: Colors.green,
                  ),
                  title: Padding(
                    padding: EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 0.0),
                    child: Text(
                      'Framework : django',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                  ),
                  subtitle: Padding(
                    padding: EdgeInsets.fromLTRB(0.0, 15.0, 8.0, 0.0),
                    child: Text(
                      'Topic : Django complete setup for vscode.',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                        color: Colors.amber,
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    TextButton(
                      child: const Text('OPEN VIDEO'),
                      onPressed: () {/* ... */},
                    ),
                    const SizedBox(width: 8),
                    TextButton(
                      child: const Text(
                        'BLOG',
                      ),
                      onPressed: () {/* ... */},
                    ),
                  ],
                ),
              ],
            ),
          ),
          Card(
            elevation: 50,
            shadowColor: Colors.black,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  leading: Icon(
                    Icons.open_in_new_rounded,
                    color: Colors.green,
                  ),
                  title: Padding(
                    padding: EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 0.0),
                    child: Text(
                      'Framework : django',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                  ),
                  subtitle: Padding(
                    padding: EdgeInsets.fromLTRB(0.0, 15.0, 8.0, 0.0),
                    child: Text(
                      'Topic : Django complete setup for vscode.',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                        color: Colors.amber,
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    TextButton(
                      child: const Text('OPEN VIDEO'),
                      onPressed: () {/* ... */},
                    ),
                    const SizedBox(width: 8),
                    TextButton(
                      child: const Text(
                        'BLOG',
                      ),
                      onPressed: () {/* ... */},
                    ),
                  ],
                ),
              ],
            ),
          ),
          Card(
            elevation: 50,
            shadowColor: Colors.black,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  leading: Icon(
                    Icons.open_in_new_rounded,
                    color: Colors.green,
                  ),
                  title: Padding(
                    padding: EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 0.0),
                    child: Text(
                      'Framework : django',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                  ),
                  subtitle: Padding(
                    padding: EdgeInsets.fromLTRB(0.0, 15.0, 8.0, 0.0),
                    child: Text(
                      'Topic : Django complete setup for vscode.',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                        color: Colors.amber,
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    TextButton(
                      child: const Text('OPEN VIDEO'),
                      onPressed: () {/* ... */},
                    ),
                    const SizedBox(width: 8),
                    TextButton(
                      child: const Text(
                        'BLOG',
                      ),
                      onPressed: () {/* ... */},
                    ),
                  ],
                ),
              ],
            ),
          ),
          Card(
            elevation: 50,
            shadowColor: Colors.black,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  leading: Icon(
                    Icons.open_in_new_rounded,
                    color: Colors.green,
                  ),
                  title: Padding(
                    padding: EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 0.0),
                    child: Text(
                      'Framework : django',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                  ),
                  subtitle: Padding(
                    padding: EdgeInsets.fromLTRB(0.0, 15.0, 8.0, 0.0),
                    child: Text(
                      'Topic : Django complete setup for vscode.',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                        color: Colors.amber,
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    TextButton(
                      child: const Text('OPEN VIDEO'),
                      onPressed: () {/* ... */},
                    ),
                    const SizedBox(width: 8),
                    TextButton(
                      child: const Text(
                        'BLOG',
                      ),
                      onPressed: () {/* ... */},
                    ),
                  ],
                ),
              ],
            ),
          ),
          Card(
            elevation: 50,
            shadowColor: Colors.black,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  leading: Icon(
                    Icons.open_in_new_rounded,
                    color: Colors.green,
                  ),
                  title: Padding(
                    padding: EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 0.0),
                    child: Text(
                      'Framework : django',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                  ),
                  subtitle: Padding(
                    padding: EdgeInsets.fromLTRB(0.0, 15.0, 8.0, 0.0),
                    child: Text(
                      'Topic : Django complete setup for vscode.',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                        color: Colors.amber,
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    TextButton(
                      child: const Text('OPEN VIDEO'),
                      onPressed: () {/* ... */},
                    ),
                    const SizedBox(width: 8),
                    TextButton(
                      child: const Text(
                        'BLOG',
                      ),
                      onPressed: () {/* ... */},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
