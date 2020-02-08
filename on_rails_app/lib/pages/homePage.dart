import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:on_rails_app/components/actividadComponent.dart';
import 'package:on_rails_app/components/bottomNav.dart';

class HomePage extends StatefulWidget {

  HomePage({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}


class _MyStatefulWidgetState extends State<HomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Menu',
      style: optionStyle,
    ),
    Text(
      'Index 1: Eventos',
      style: optionStyle,
    ),
    Text(
      'Index 2: Amigos',
      style: optionStyle,
    ),
    Text(
      'Index 3: Perfil',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Menu'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            title: Text('Eventos'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            title: Text('Amigos'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Perfil'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.red,
        onTap: _onItemTapped,
      ),
    );
  }
}