import 'package:flutter/material.dart';

import 'DownloadPage/Download.dart';
import 'Home.dart';
import 'Registration_form/Login.dart';
import 'Registration_form/SignUp.dart';
import 'Subscription/Detailed_subscribe.dart';
import 'Subscription/Subscription.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme:
          ThemeData(primarySwatch: Colors.pink, backgroundColor: Colors.black),
      home: Login(),
      routes: {
        '/signup': (context) => SignUp(),
        '/detailed_subscription': (context) => Detailed_subscribe(),
        '/subscription': (context) => Subscription(),
        '/download': (context) => Download(),
        '/home': (context) => Homepage(),
      },
    );
  }
}
