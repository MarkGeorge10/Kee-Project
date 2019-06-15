import 'package:flutter/material.dart';

import 'Movie_download.dart';
import 'Series_download.dart';

class Download extends StatelessWidget {
  final List<Tab> myTabs = <Tab>[
    Tab(text: 'MOVIES'),
    Tab(text: 'SERIES'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            "Downloads",
            style: TextStyle(color: Colors.white, fontSize: 30.0),
          ),
          bottom: TabBar(
            tabs: myTabs,
          ),
        ),
        body: TabBarView(
          children: myTabs.map((Tab tab) {
            return buildNavPage(tab.text, context);
          }).toList(),
        ),
      ),
    );
  }

  Widget buildNavPage(String text, BuildContext context) {
    if (text == "MOVIES") {
      return Movie_download();
    }
    return Series_download();
  }
}
