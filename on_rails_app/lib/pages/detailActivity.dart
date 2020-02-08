import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:on_rails_app/components/bottomNav.dart';



class DetailActivityPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          Text("DETALLE DE ACTIVIDAD")
        ],
      ),
    );
  }
}