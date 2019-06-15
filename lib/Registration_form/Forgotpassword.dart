import 'package:flutter/material.dart';

class Forgot_password extends StatefulWidget {
  @override
  _Forgot_passwordState createState() => _Forgot_passwordState();
}

class _Forgot_passwordState extends State<Forgot_password> {
  final emailField = TextField(
    obscureText: false,
    keyboardType: TextInputType.emailAddress,
    decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: "Email Address",
        hintStyle: TextStyle(color: Colors.white54)),
  );

  final resetpassword = Container(
    width: double.maxFinite,
    child: MaterialButton(
      minWidth: 150.0,
      height: 50.0,
      padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
      onPressed: () {},
      child: Text(
        "Reset Password",
        textAlign: TextAlign.center,
      ),
    ),
    decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: <Color>[Colors.pinkAccent, Colors.yellowAccent],
        begin: FractionalOffset(0.5, 3.0),
        end: FractionalOffset(1.0, 0.0),
      ),
      borderRadius: BorderRadius.circular(8),
    ),
    margin: EdgeInsets.only(
      top: 15.0,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black,
          title: new Text("Forgot Password",
              style: TextStyle(color: Colors.white, fontSize: 30.0))),
      body: Center(
        child: Container(
          color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: ListView(
              children: <Widget>[
                Container(
                  child: new Text(
                    "Sit Back & Relax !",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 22.0),
                  ),
                  margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
                ),
                Container(
                  child: new Text(
                    "It will take less than a minutes to reset a password ",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 22.0),
                  ),
                  margin: EdgeInsets.only(top: 5.0, bottom: 30.0),
                ),
                Container(
                  color: Color(0xff454647),
                  child: emailField,
                ),
                resetpassword,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
