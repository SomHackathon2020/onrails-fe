import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:on_rails_app/components/actividadComponent.dart';
import 'package:on_rails_app/components/actividadComponent2.dart';
import 'package:on_rails_app/components/actividadComponent3.dart';
import 'package:on_rails_app/models/evento.dart';
import 'package:on_rails_app/providers/eventoProvider.dart';
import 'package:on_rails_app/providers/geolocator.dart';

import '../components/actividadComponent.dart';

class ActivityPage extends StatelessWidget {

  EventProvider eventProvider;

  @override
  Widget build(BuildContext context) {

    eventProvider = EventProvider();
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
                future: eventProvider.getEvents(),
                builder: (BuildContext context, AsyncSnapshot<List<Evento>> snapshot) {
                  if(snapshot.hasData){
                    print(snapshot.data[0].distance);
                    return Text("");
                    
                  }else{
                    return Text("");

                  }
                },
              ),
           ],
        ),
      ),
    );
  }
}