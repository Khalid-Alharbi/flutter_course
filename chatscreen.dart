import 'package:flutter/material.dart';

class Chat_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Center(
              child: Text(
            "Chat come in here",
            style: TextStyle(fontSize: 45.0),
          )),
        ),
      ),
    );
  }
}
