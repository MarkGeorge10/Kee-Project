import 'package:flutter/material.dart';

class Series_download extends StatefulWidget {
  @override
  _Series_downloadState createState() => _Series_downloadState();
}

class _Series_downloadState extends State<Series_download> {
  var series_items = [
    {
      "image": "img/blazer1.jpeg",
      "title": "Lord of war",
      "hours": "1:30 Hrs",
      "type": "18+ | Love Story | English"
    },
    {
      "image": "img/blazer1.jpeg",
      "title": "Love in story",
      "hours": "1:30 Hrs",
      "type": "18+ | Love Story | English"
    },
    {
      "image": "img/blazer1.jpeg",
      "title": "Sky wars",
      "hours": "1:30 Hrs",
      "type": "18+ | Love Story | English",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView.builder(
          itemCount: series_items.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              elevation: 20.0,
              margin: EdgeInsets.all(5.0),
              child: Material(
                child: InkWell(
                  child: Container(
                    decoration: BoxDecoration(color: Colors.black),
                    child: ListTile(
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 10.0),
                        leading: Container(
                          padding: EdgeInsets.only(right: 12.0),
                          child: Image.asset(
                            series_items[index]['image'],
                            fit: BoxFit.fitHeight,
                            width: 80.0,
                            height: 80.0,
                          ),
                        ),
                        title: Column(
                          children: <Widget>[
                            Text(
                              series_items[index]['title'],
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15.0,
                                  decorationColor: Colors.black),
                              textDirection: TextDirection.ltr,
                            ),
                            Text(
                              series_items[index]['hours'],
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 14.0),
                              textDirection: TextDirection.ltr,
                            ),
                            Text(
                              series_items[index]['type'],
                              style: TextStyle(
                                  color: Colors.white, fontSize: 15.0),
                              textDirection: TextDirection.ltr,
                            ),
                          ],
                        ),
                        trailing: Container(
                          child: Icon(
                            Icons.check_circle,
                            color: Colors.white,
                            size: 15.0,
                          ),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: <Color>[
                                Colors.pinkAccent,
                                Colors.yellowAccent
                              ],
                              begin: FractionalOffset(0.0, 0.0),
                              end: FractionalOffset(3.0, 0.0),
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        )),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
