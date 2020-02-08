import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BottomNav extends StatelessWidget {
  BottomNav();
  @override
  Widget build(BuildContext context) {
  return BottomNavigationBar(
          items: [
            new BottomNavigationBarItem(
                icon: new Icon(Icons.add),
                title: new Text("trends")
            ),
            new BottomNavigationBarItem(
                icon: new Icon(Icons.location_on),
                title: new Text("feed")
            ),
            new BottomNavigationBarItem(
                icon: new Icon(Icons.people),
                title: new Text("community")
            )
          ]
      );
      }
}