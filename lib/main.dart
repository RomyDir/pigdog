import 'package:flutter/material.dart';
import 'package:pigdognew/src/friends.dart';
import 'package:pigdognew/src/home.dart';
import 'package:pigdognew/src/profile.dart';
import 'package:pigdognew/src/settings.dart';
import 'package:pigdognew/src/workout.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Named Routes Demo',
      // Start the app with the "/" named route. In this case, the app starts
      // on the FirstScreen widget.
      initialRoute: '/home',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/home': (context) => Home(),
        // When navigating to the "/second" route, build the SecondScreen widget.
      },
    ),
  );

  runApp(
    Tab(
    ),
  );
}

class Tab extends StatelessWidget {
  Tab(ElevatedButton button);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(ElevatedButton.icon(
                  icon: Icon(Icons.settings),
                  label: null,
                  onPressed: () {
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Settings()),
                  );
                  },
                )
                ),
                Tab(ElevatedButton.icon(
                  icon: Icon(Icons.group),
                  label: null,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Friends()),
                    );
                  },
                )
                ),
                Tab(ElevatedButton.icon(
                  icon: Icon(Icons.fitness_center),
                  label: null,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Workout()),
                    );
                  },
                )
                ),
                Tab(ElevatedButton.icon(
                  icon: Icon(Icons.person),
                  label: null,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Profile()),
                    );
                  },
                )
                ),
              ],
            ),
            title: Text('Pigdog'),
          ),
          body: TabBarView(
            children: [
              Icon(Icons.settings),
              Icon(Icons.group),
              Icon(Icons.fitness_center),
              Icon(Icons.person_outline_sharp),
            ],
          ),
        ),
      ),
    );
  }
}

