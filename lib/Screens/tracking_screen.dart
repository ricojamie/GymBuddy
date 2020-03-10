import 'package:flutter/material.dart';
import 'package:gym/Components/sliding_up_panel.dart';

class TrackingScreen extends StatefulWidget {
  static String id = 'tracking_screen';
  bool isSwitched;

  @override
  _TrackingScreenState createState() => _TrackingScreenState();
}

class _TrackingScreenState extends State<TrackingScreen> {
  List<Map<String, dynamic>> exercises = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, left: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: Text(
                          'Exercise Library',
                          style: TextStyle(
                              fontSize: 24.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 16.0),
                        child: IconButton(
                          icon: Icon(Icons.filter_list),
                          iconSize: 35.0,
                          onPressed: () => _onFilterPressed(true),
                        ),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Container(
                    constraints: BoxConstraints(
                      minWidth: 250,
                      maxWidth: (deviceWidth * 0.9),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.green[900],
                            style: BorderStyle.solid,
                          ),
                        ),
                        labelText: 'Search for exercise',
                        labelStyle: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          CurrentWorkoutSlideUp(),
        ],
      ),
    );
  }

  void _onFilterPressed(isSwitched) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Center(
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        'Chest',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Switch(
                      value: isSwitched,
                      onChanged: (value) {
                        setState(() {
                          isSwitched = value;
                        });
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        'Back',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Switch(
                      value: isSwitched,
                      onChanged: (value) {
                        setState(() {
                          isSwitched = value;
                        });
                      },
                    ),
                  ],
                )
              ],
            ),
          );
        });
  }
}
