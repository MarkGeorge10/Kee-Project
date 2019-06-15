import 'package:flutter/material.dart';

import 'Forgotpassword.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
// Style Forget Password
  final Shader linearGradient = LinearGradient(
    colors: <Color>[Colors.pinkAccent, Colors.yellowAccent],
  ).createShader(Rect.fromLTWH(335.0, 0.0, 10.0, 0.0));

  final color = LinearGradient(
    colors: <Color>[Colors.pinkAccent, Colors.yellowAccent],
    begin: FractionalOffset(0.5, 3.0),
    end: FractionalOffset(1.0, 0.0),
  );

  @override
  Widget build(BuildContext context) {
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
          hintText: "Password",
//         suffixText: "Forget?",
          suffixIcon: InkWell(
              child: Container(
                child: Text(
                  "Forget?",
                  style:
                      TextStyle(foreground: Paint()..shader = linearGradient),
                ),
                margin: EdgeInsets.only(top: 15.0, right: 5.0),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => new Forgot_password()));
              }),
          suffixStyle: TextStyle(foreground: Paint()..shader = linearGradient),
          hintStyle: TextStyle(color: Colors.white54)),
    );

    final loginButon = Container(
      width: double.maxFinite,
      child: MaterialButton(
        minWidth: 150.0,
        height: 50.0,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          Navigator.pushNamed(context, '/home');
        },
        child: Text(
          "Login",
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

    final signupButon = Container(
      width: double.maxFinite,
      child: MaterialButton(
        minWidth: 150.0,
        height: 50.0,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          Navigator.pushNamed(context, '/signup');
        },
        child: Text(
          "Sign Up",
          style: TextStyle(color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.pinkAccent),
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
      body: Center(
        child: Container(
          color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: ListView(
              children: <Widget>[
                SizedBox(
                    child: Icon(
                  Icons.computer,
                  color: Colors.pink,
                  size: 100.0,
                )),

                // -------------------Text Fields----------------------------------
                SizedBox(height: 20.0),
                Container(
                  color: Color(0xff454647),
                  child: emailField,
                ),
                SizedBox(height: 10.0),
                Container(
                  color: Color(0xff454647),
                  child: passwordField,
                ),

                //------------------------------------------------------------------------

                SizedBox(
                  height: 10.0,
                ),

                //-------------------------- Design Buttons --------------------------------
                Container(
                  child: Column(
                    children: <Widget>[
                      InkWell(
                        child: loginButon,
                      ),
                      Container(
                        child: Text(
                          "Or continue with",
                          style: TextStyle(color: Colors.white),
                        ),
                        margin: EdgeInsets.only(top: 16.0, bottom: 16.0),
                      ),
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
                      Container(
                        child: Text(
                          "Not Registered yet?",
                          style: TextStyle(color: Colors.white),
                        ),
                        margin: EdgeInsets.only(top: 25.0, bottom: 16.0),
                      ),
                      InkWell(
                        child: signupButon,
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
