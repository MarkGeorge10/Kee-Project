import 'package:flutter/material.dart';

class Movie_download extends StatefulWidget {
  @override
  _Movie_downloadState createState() => _Movie_downloadState();
}

class _Movie_downloadState extends State<Movie_download> {
  var movie_items = [
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
          itemCount: movie_items.length,
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
                          child: Image.asset(
                            movie_items[index]['image'],
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                        title: Column(
                          children: <Widget>[
                            Text(
                              movie_items[index]['title'],
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15.0,
                                  decorationColor: Colors.black),
                            ),
                            Text(
                              movie_items[index]['hours'],
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 14.0),
                            ),
                            Text(
                              movie_items[index]['type'],
                              style: TextStyle(
                                  color: Colors.white, fontSize: 15.0),
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
