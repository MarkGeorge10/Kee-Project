import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final color = LinearGradient(
    colors: <Color>[Colors.pinkAccent, Colors.yellowAccent],
    begin: FractionalOffset(0.5, 3.0),
    end: FractionalOffset(1.0, 0.0),
  );

  List<String> _locations = ['Male', 'Female']; // Option 2
  String _selectedLocation;

  @override
  Widget build(BuildContext context) {
    final nameField = TextField(
      obscureText: false,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Full Name",
          hintStyle: TextStyle(color: Colors.white54)),
    );

    final emailField = TextField(
      obscureText: false,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Email Address",
          hintStyle: TextStyle(color: Colors.white54)),
    );

    final passwordField = TextField(
      obscureText: true,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Create Password",
          hintStyle: TextStyle(color: Colors.white54)),
    );

    final confirmpasswordField = TextField(
      obscureText: true,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Confirm Password",
          hintStyle: TextStyle(color: Colors.white54)),
    );

    final selectgender = Center(
      child: DropdownButton(
        hint: Text(
          'Please choose your gender',
          style: TextStyle(color: Colors.white54),
        ),
        // Not necessary for Option 1
        value: _selectedLocation,
        onChanged: (newValue) {
          setState(() {
            _selectedLocation = newValue;
          });
        },
        items: _locations.map((location) {
          return DropdownMenuItem(
            child: new Text(
              location,
            ),
            value: location,
          );
        }).toList(),
      ),
    );

    final signupButon = Container(
      width: double.maxFinite,
      child: MaterialButton(
        minWidth: 150.0,
        height: 50.0,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {},
        child: Text(
          "Sign Up",
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
    );

    final googlebutton = Container(
      child: FlatButton(
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {},
        child: Center(
          child: Row(
            // Replace with a Row for horizontal icon + text
            children: <Widget>[
              Image.asset(
                "img/googlelogo.png",
                fit: BoxFit.cover,
                height: 30.0,
              ),
              Text(
                "Google",
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
    );

    final facebookbutton = Container(
      child: FlatButton(
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {},
        child: Center(
          child: Row(
            // Replace with a Row for horizontal icon + text
            children: <Widget>[
              Image.asset(
                "img/facelogo.png",
                fit: BoxFit.cover,
                height: 30.0,
              ),
              Text(
                "Facebook",
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(8),
      ),
    );

    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black,
          title: new Text("Sign Up",
              style: TextStyle(color: Colors.white, fontSize: 30.0))),
      body: Center(
        child: Container(
          color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: ListView(
              children: <Widget>[
                // -------------------Text Fields----------------------------------

                Container(
                  color: Color(0xff454647),
                  child: nameField,
                ),
                SizedBox(height: 10.0),
                Container(
                  color: Color(0xff454647),
                  child: emailField,
                ),
                SizedBox(height: 10.0),
                Container(
                  color: Color(0xff454647),
                  child: passwordField,
                ),
                SizedBox(height: 10.0),
                Container(
                  color: Color(0xff454647),
                  child: confirmpasswordField,
                ),

                SizedBox(height: 10.0),

                Container(
                  color: Color(0xff454647),
                  child: selectgender,
                  margin: EdgeInsets.only(bottom: 20.0),
                ),

                signupButon,
                //------------------------------------------------------------------------

                //-------------------------- Design Buttons --------------------------------
                Container(
                  margin: EdgeInsets.only(top: 20.0),
                  child: Column(
                    children: <Widget>[
//
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: facebookbutton,
                            flex: 6,
                          ),
                          Expanded(
                            child: Container(),
                            flex: 1,
                          ),
                          Expanded(
                            child: googlebutton,
                            flex: 6,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
