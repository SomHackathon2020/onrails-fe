import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:on_rails_app/components/actividadComponent.dart';
import 'package:on_rails_app/components/actividadComponent2.dart';
import 'package:on_rails_app/components/actividadComponent3.dart';
import 'package:on_rails_app/providers/geolocator.dart';

import '../components/actividadComponent.dart';

class ActivityPage extends StatelessWidget {

  GeolocatorService geolocatorService;

  @override
  Widget build(BuildContext context) {

    geolocatorService = GeolocatorService();
    return SafeArea(
          child: Scaffold
          
      (
        resizeToAvoidBottomPadding: false,
        body: ListView(
           children: <Widget>[
              EventComponent(),
              EventComponent2(),
              EventComponent3(),
              FutureBuilder(
                future: geolocatorService.getPos(),
                builder: (BuildContext context, AsyncSnapshot<Position> snapshot) {
                  if(snapshot.hasData){
                    return Text("");
                    
                  }else{

                  }
                },
              ),
           ],
        ),
      ),
    );
  }
}