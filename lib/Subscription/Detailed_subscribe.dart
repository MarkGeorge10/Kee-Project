import 'package:flutter/material.dart';

class Detailed_subscribe extends StatefulWidget {
  final details_title;
  final details_subtitle;
  final details_price;

  Detailed_subscribe(
      {this.details_title, this.details_subtitle, this.details_price});

  @override
  _Detailed_subscribeState createState() => _Detailed_subscribeState();
}

class _Detailed_subscribeState extends State<Detailed_subscribe> {
  var newsJson = [
    {
      'title': 'PayPal',
      'img': 'img/paypal.png',
    },
    {
      'title': 'PayU Money',
      'img': 'img/payu.png',
    },
    {
      'title': 'Google Pay',
      'img': 'img/googlepay.png',
    },
    {
      'title': 'Credit Card',
      'img': 'img/news.jpg',
    },
    {
      'title': 'Bank Transfer',
      'img': 'img/news.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Subscription"),
      ),
      body: buildBody(),
    );
  }

  Widget buildBody() {
    return Column(
      children: <Widget>[
        buildTitleRow(),
        Container(
          margin: EdgeInsets.all(10.0),
          child: new Text(
            "How would you like to pay",
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
        ),
        Expanded(
          child: buildNewsFeed(),
          flex: 2,
        )
      ],
    );
  }

  Widget buildTitleRow() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: <Color>[Colors.pinkAccent, Colors.yellowAccent],
              begin: FractionalOffset(0.0, 0.5),
              end: FractionalOffset(1.55, 1.0),
            ),
            borderRadius: BorderRadius.circular(10.0)),
        child: ListTile(
          contentPadding:
              EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
          title: Container(
            padding: EdgeInsets.only(right: 12.0),
            decoration: new BoxDecoration(
              border: new Border(
                  right: new BorderSide(width: 1.0, color: Colors.white24)),
            ),
            child: Column(
              children: <Widget>[
                //------------------- PACK DESIGN-----------------------------------

                Container(
                  child: Text(
                    widget.details_title,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 10.0,
                        decorationColor: Colors.white),
                  ),
                  margin: EdgeInsets.only(right: 60.0, bottom: 10.0),
                ),
                Container(
                  child: Text(
                    widget.details_subtitle,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        decorationColor: Colors.black),
                  ),
                  margin: EdgeInsets.only(right: 60.0),
                ),
              ],
            ),
          ),
          /*leading: Image.asset(
                widget.details_subtitle,
                scale: 4,
              ),*/
          trailing: Column(
            children: <Widget>[
              Icon(
                Icons.keyboard_arrow_right,
                color: Colors.white,
                size: 30.0,
              ),
              Text(
                widget.details_price,
                style: TextStyle(color: Colors.white, fontSize: 20.0),
                overflow: TextOverflow.ellipsis,
              ),
              //----------------------------------------------------------------------------------
            ],
          ),
        ),
      ),
    );
  }

  Widget buildNewsFeed() {
    return ListView.builder(
      itemCount: newsJson.length,
      itemBuilder: (context, i) {
        return ListTile(
          title: Text(
            newsJson[i]['title'],
            style: TextStyle(color: Colors.white, fontSize: 25.0),
          ),
          leading: Image.asset(
            newsJson[i]['img'],
          ),
          trailing: Icon(
            Icons.navigate_next,
            color: Colors.white,
          ),
          subtitle: Text(
            " ",
          ),
        );
      },
      shrinkWrap: true,
    );
  }
}
