import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @required
  final String name;
  @required
  final String email;
  
  HomePage({this.name, this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10.0),
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text("Welcome: " + name),
              Text("Email: " + email),
            ],
          ),
        ),
      ),
    );
  }
}
