import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BottomNav extends StatelessWidget {
  BottomNav();
  @override
  Widget build(BuildContext context) {
  return BottomNavigationBar(
          fixedColor: Colors.black,
          backgroundColor: Colors.red,
          unselectedItemColor: Colors.black54,
          items: [
            new BottomNavigationBarItem(
                icon: new Icon(Icons.home),
                title: new Text("Menu")
            ),
            new BottomNavigationBarItem(
                icon: new Icon(Icons.local_activity),
                title: new Text("Eventos")
            ),
            new BottomNavigationBarItem(
                icon: new Icon(Icons.people),
                title: new Text("Amigos")
            ),
            new BottomNavigationBarItem(
                icon: new Icon(Icons.person),
                title: new Text("Usuario")
            )
          ]
      );
      }
}