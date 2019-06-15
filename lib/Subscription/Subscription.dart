import 'package:flutter/material.dart';

import 'Detailed_subscribe.dart';

class Subscription extends StatefulWidget {
  @override
  _SubscriptionState createState() => _SubscriptionState();
}

class _SubscriptionState extends State<Subscription> {
  var subscription_items = [
    {"title": "STARTER PACK", "subtitle": "3 MONTH", "price": "\$9.99"},
    {"title": "STANDARD PACK", "subtitle": "6 MONTH", "price": "\$14.99"},
    {"title": "SUPER SAVER PACK", "subtitle": "12 MONTH", "price": "\$23.99"},
  ];

  var text_items = [
    {"text": "Watch all espisodes of every series"},
    {
      "text": "Download every content available on app",
    },
    {"text": "Full HD Content download oprion"},
    {"text": "Any Time Subscription Cancelation facility"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          backgroundColor: Colors.black,
          title: new Text("Subscription",
              style: TextStyle(color: Colors.white, fontSize: 30.0))),
      body: buildBody(),
    );
  }

  Widget buildBody() {
    return Column(
      children: <Widget>[
        Expanded(
          child: buildButtons(),
          flex: 2,
        ),
        Container(
          margin: EdgeInsets.all(10.0),
          child: new Text(
            "Subscription allows",
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
        ),
        Expanded(
          child: buildTitle(),
          flex: 2,
        )
      ],
    );
  }

  Widget buildTitle() {
    return ListView.builder(
        itemCount: text_items.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Container(
              child: Icon(
                Icons.check_circle,
                color: Colors.white,
                size: 15.0,
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[Colors.pinkAccent, Colors.yellowAccent],
                  begin: FractionalOffset(0.0, 0.0),
                  end: FractionalOffset(3.0, 0.0),
                ),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            title: Text(
              text_items[index]['text'],
              style: TextStyle(color: Colors.white),
            ),
          );
        });
  }

  Widget buildButtons() {
    return ListView.builder(
        itemCount: subscription_items.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(1.0),
            child: Card(
              child: Material(
                child: InkWell(
                  onTap: () => Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new Detailed_subscribe(
                                //navige to detailed page with passing data
                                details_title: subscription_items[index]
                                    ['title'],
                                details_subtitle: subscription_items[index]
                                    ['subtitle'],
                                details_price: subscription_items[index]
                                    ['price'],
                              ))),
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: <Color>[Colors.pinkAccent, Colors.yellowAccent],
                        begin: FractionalOffset(0.0, 0.5),
                        end: FractionalOffset(1.55, 1.0),
                      ),
                    ),
                    child: ListTile(
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 15.0, vertical: 15.0),

                      leading: Container(
                        padding: EdgeInsets.only(right: 12.0),
                        decoration: new BoxDecoration(
                          border: new Border(
                              right: new BorderSide(
                                  width: 1.0, color: Colors.white24)),
                        ),
                        child: Column(
                          children: <Widget>[
                            Container(
                              child: Text(
                                subscription_items[index]['title'],
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10.0,
                                    decorationColor: Colors.black),
                              ),
                              margin: EdgeInsets.only(bottom: 20.0),
                            ),
                            Container(
                              child: Text(
                                subscription_items[index]['subtitle'],
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0,
                                    decorationColor: Colors.black),
                              ),
                              margin: EdgeInsets.only(left: 20.0),
                            ),
                          ],
                        ),
                      ),

                      // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),

                      trailing: Column(
                        children: <Widget>[
                          Icon(
                            Icons.keyboard_arrow_right,
                            color: Colors.white,
                            size: 30.0,
                          ),
                          Text(
                            subscription_items[index]['price'],
                            style:
                                TextStyle(color: Colors.white, fontSize: 20.0),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        });
  }
}
