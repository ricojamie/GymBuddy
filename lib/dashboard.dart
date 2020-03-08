import 'package:flutter/material.dart';
import 'constants.dart';
import 'weight_graph.dart';
import 'exercise_breakdown_chart.dart';

class DashboardScreen extends StatefulWidget {
  static String id = 'dashboard_screen';
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _selectedItemPosition = 0;
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 35),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    child: Column(
                      children: <Widget>[
                        Text("7 💪"),
                        SizedBox(
                          height: 8,
                        ),
                        Text("Workout Streak"),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: <Widget>[
                        Text("47"),
                        SizedBox(
                          height: 8,
                        ),
                        Text("Total Workouts"),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: <Widget>[
                        Text("260"),
                        SizedBox(
                          height: 8,
                        ),
                        Text("Current Weight"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),
            Container(
              decoration: BoxDecoration(
                color: mainColor,
                borderRadius: BorderRadius.circular(15),
              ),
              constraints: BoxConstraints(
                minWidth: 250,
                maxWidth: (deviceWidth * 0.9),
                minHeight: 75,
                maxHeight: 75,
              ),
              child: Center(
                child: Text(
                  'Placeholder for Yesterdays workout',
                ),
              ),
            ),
            SizedBox(height: 40),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: BorderRadius.circular(15),
              ),
              constraints: BoxConstraints(
                minWidth: 250,
                maxWidth: (deviceWidth * 0.9),
                minHeight: 75,
                maxHeight: 220,
              ),
              child: Center(
                child: WeightChart(),
              ),
            ),
            SizedBox(height: 40),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: BorderRadius.circular(15),
              ),
              constraints: BoxConstraints(
                minWidth: 250,
                maxWidth: (deviceWidth * 0.9),
                minHeight: 75,
                maxHeight: 300,
              ),
              child: Center(
                child: ExerciseBreakDownChart(),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
