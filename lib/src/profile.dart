import 'package:flutter/material.dart';
import 'package:pigdognew/main.dart';
import 'package:pigdognew/src/friends.dart';
import 'package:pigdognew/src/settings.dart';
import 'package:pigdognew/src/workout.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('PigDog'),
        ),
        body: Center(
          child: Column(
              children: <Widget>[
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
                      }

                  ),
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
                      }
                  ),
                ),
                Container(
                  child: ElevatedButton(
                      child: Text('Workout'),
                      // Within the `FirstScreen` widget
                      onPressed: () {
                        // Navigate to the second screen using a named route.
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Workout()),
                        );
                      }
                  ),
                ),
                Container(
                  child: ElevatedButton(
                      child: Text('Profile'),
                      // Within the `FirstScreen` widget
                      onPressed: () {
                        // Navigate to the second screen using a named route.
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Profile()),
                        );
                      }
                  ),
                ),

              ]
          ),
        ),
      ),
    );
  }
}