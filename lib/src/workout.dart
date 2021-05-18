import 'package:flutter/material.dart';
import 'package:pigdognew/src/friends.dart';
import 'package:pigdognew/src/settings.dart';

class Workout extends StatelessWidget {
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
                  child: Text('Friends'),
                  // Within the `FirstScreen` widget
                  onPressed: () {
                    // Navigate to the second screen using a named route.
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Friends()),
                    );
                  }),
            ),
            Container(
              child: ElevatedButton(
                  child: Text('Settings'),
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
                  child: Text('Friends'),
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
