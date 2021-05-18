import 'package:flutter/material.dart';
import 'package:pigdognew/main.dart';
import 'package:pigdognew/src/friends.dart';


class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('PigDog'),
        ),
        body: Center(
          child: Column(children: <Widget>[
            Container(
              child: ElevatedButton(
                // Within the `FirstScreen` widget
                  onPressed: () {
                    // Navigate to the second screen using a named route.
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Settings()),
                    );
                  }),
            ),
            Container(
              child: ElevatedButton(
                // Within the `FirstScreen` widget
                  onPressed: () {
                    // Navigate to the second screen using a named route.
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Friends()),
                    );
                  }),
            ),
          ]),
        ),
      ),
    );
  }
}
