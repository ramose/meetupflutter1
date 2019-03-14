import 'package:flutter/material.dart';
import 'package:materiflutter1/list_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text("Login"),
        // ),
        body: Center(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/city.png"),
            alignment: Alignment.bottomCenter,
            fit: BoxFit.contain
          ),
            gradient: LinearGradient(
                colors: [Colors.white, Colors.grey[200]],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.0, 0.5])),
        padding: EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset("assets/logo_blue.png"),
            Image.asset("assets/title_grey.png"),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Color(0x99FFFFFF)),
              child: Column(
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(labelText: "username"),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: "password",
                    ),
                    obscureText: true,
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: RaisedButton(
                          child: Text(
                            "Login",
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => ListPage()));
                          },
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Forgot Password",
                          style: TextStyle(color: Colors.blueAccent),
                        ),
                        Text(
                          "REGISTER",
                          style: TextStyle(color: Colors.blueAccent),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
