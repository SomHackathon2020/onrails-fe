import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:on_rails_app/components/actividadComponent.dart';


class ActivityPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold
      (
        body: Column(
           children: <Widget>[
              EventComponent()
           ],
        ),
      ),
    );
  }
}