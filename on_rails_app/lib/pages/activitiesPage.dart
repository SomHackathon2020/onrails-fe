import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:on_rails_app/components/actividadComponent.dart';
import 'package:on_rails_app/components/actividadComponent2.dart';
import 'package:on_rails_app/components/actividadComponent3.dart';

import '../components/actividadComponent.dart';

class ActivityPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold
          
      (
        resizeToAvoidBottomPadding: false,
        body: ListView(
           children: <Widget>[
              EventComponent(),
              EventComponent2(),
              EventComponent3()
           ],
        ),
      ),
    );
  }
}