import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final appTitle = 'Drawer Demo';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(child: Text('My Page!')),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Drawer Header'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondRoute()),
                );
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Route'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Open route'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondRoute()),
            );
          },
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Developer Info'),
      ),
      backgroundColor: Colors.blueGrey[900],
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('images/andrea2.png'),
            ),
            Text(
              'Andrea Strano',
              style: TextStyle(
                fontFamily: 'Permanent Marker',
                fontSize: 40,
                color: Colors.white,
              ),
            ),
            Text(
              '!FLUTTER DEVELOPER',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                letterSpacing: 2.7,
              ),
            ),
            SizedBox(
              child: Divider(
                color: Colors.blueGrey[500],
              ),
              width: 140,
              height: 25,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(13)),
                color: Colors.blueGrey[700],
              ),
              padding: EdgeInsets.all(13),
              margin: EdgeInsets.symmetric(horizontal: 45),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.phone_android,
                    size: 45,
                    color: Colors.white,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 18),
                    child: Text(
                      '+39 329 129 39 33',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(13)),
                color: Colors.blueGrey[700],
              ),
              padding: EdgeInsets.all(13),
              margin: EdgeInsets.symmetric(vertical: 12, horizontal: 45),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.mail_outline,
                    size: 45,
                    color: Colors.white,
                  ),
                  SizedBox(width: 20),
                  Container(
                    width: 150,
                    child: Text(
                      'andreastrano92@live.it',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
