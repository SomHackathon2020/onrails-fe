import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:on_rails_app/components/bottomNav.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: const Text('Title App'),
    ),
    body: Center(
      child: Text('xdxdxdxd')
    ),
    bottomNavigationBar: BottomNav(),
  );
  }
}