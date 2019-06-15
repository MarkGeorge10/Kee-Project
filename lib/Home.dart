import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final Shader linearGradient = LinearGradient(
    colors: <Color>[Colors.pinkAccent, Colors.yellowAccent],
  ).createShader(Rect.fromLTWH(200.0, 0.0, 15.0, 50.0));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.black,
        title: Text("Auction"),
      ),
      //---------------------------------------------------------------------------------

      drawer: new Drawer(
        child: Container(
          color: Colors.black,
          child: ListView(
            children: <Widget>[
              //body of the drawer
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/home');
                },
                child: ListTile(
                  title: Text(
                    "HOME",
                    style:
                        TextStyle(foreground: Paint()..shader = linearGradient),
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text(
                    "MOVIES",
                    style:
                        TextStyle(foreground: Paint()..shader = linearGradient),
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text(
                    "SERIES",
                    style:
                        TextStyle(foreground: Paint()..shader = linearGradient),
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text(
                    "FAVOURITE",
                    style:
                        TextStyle(foreground: Paint()..shader = linearGradient),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/download');
                },
                child: ListTile(
                  title: Text(
                    "DOWNLOADS",
                    style:
                        TextStyle(foreground: Paint()..shader = linearGradient),
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text(
                    "SETTINGS",
                    style:
                        TextStyle(foreground: Paint()..shader = linearGradient),
                  ),
                ),
              ),

              Divider(),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/subscription');
                },
                child: ListTile(
                  title: Text(
                    "SUBSCRIBE",
                    style:
                        TextStyle(foreground: Paint()..shader = linearGradient),
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text(
                    "RATE APP",
                    style:
                        TextStyle(foreground: Paint()..shader = linearGradient),
                  ),
                ),
              ),

              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text(
                    "SHARE APP",
                    style:
                        TextStyle(foreground: Paint()..shader = linearGradient),
                  ),
                ),
              ),

              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text(
                    "LOG OUT",
                    style:
                        TextStyle(foreground: Paint()..shader = linearGradient),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
