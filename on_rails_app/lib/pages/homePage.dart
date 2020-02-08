import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:on_rails_app/models/usuario.dart';
import 'package:on_rails_app/pages/activitiesPage.dart';
import 'package:on_rails_app/pages/contactPage.dart';
import 'package:on_rails_app/pages/mainPage.dart';
import 'package:on_rails_app/providers/UserProvider.dart';

import 'profilePage.dart';


class HomePage extends StatefulWidget {

  HomePage({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}


class _MyStatefulWidgetState extends State<HomePage> {

  final userProvider = new UserProvider();

  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static  List<Widget> _widgetOptions = <Widget>[
    MainPage(),
    ActivityPage(),
    ContactPage(),
    ProfilePage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {  

   userProvider.getMyUserInfo();

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