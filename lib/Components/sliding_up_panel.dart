import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class CurrentWorkoutSlideUp extends StatelessWidget {
  const CurrentWorkoutSlideUp({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SlidingUpPanel(
      backdropEnabled: true,
      panelSnapping: true,
      defaultPanelState: PanelState.CLOSED,
      backdropOpacity: 0,
      minHeight: 50,
      maxHeight: 450,
      color: Colors.black54,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(15),
        topRight: Radius.circular(15),
      ),
      panelBuilder: (ScrollController sc) => ListView.separated(
        controller: sc,
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) {
          return Center(
            child: Text('Biceps'),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return Divider();
        },
      ),
      collapsed: Container(),
    );
  }
}
