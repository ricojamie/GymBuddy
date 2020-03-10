import 'package:flutter/material.dart';
import 'Screens/dashboard.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'Screens/tracking_screen.dart';

void main() => runApp(Gym());

class Gym extends StatefulWidget {
  @override
  _GymState createState() => _GymState();
}

class _GymState extends State<Gym> {
  int _selectedItemPosition = 0;
  final _pageOptions = [
    DashboardScreen(),
    TrackingScreen(),
    Text(
      'History Screen',
    )
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(),
      home: Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.notifications),
              onPressed: () {},
            )
          ],
          title: Text('Be Fit!'),
        ),
        body: _pageOptions[_selectedItemPosition],
        bottomNavigationBar: SnakeNavigationBar(
          style: SnakeBarStyle.floating,
          backgroundColor: Colors.green[900],
          currentIndex: _selectedItemPosition,
          onTap: (int index) {
            setState(() {
              _selectedItemPosition = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.videogame_asset),
              title: Text('Workouts'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.show_chart),
              title: Text('History'),
            ),
          ],
        ),
      ),
    );
  }
}
