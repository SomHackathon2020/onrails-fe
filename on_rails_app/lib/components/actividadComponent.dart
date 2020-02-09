import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:on_rails_app/models/evento.dart';

class EventComponent extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Text("");
  }

  Widget getCard(Evento eventoo){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      child: _card(eventoo)
    );
  }


  Widget _card(Evento evento) {

    final card = Container(
      // clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Image.memory(base64Decode(evento.picture!=null? evento.picture:""),
          fit: BoxFit.fitWidth,
          height: 100,
          ),
          Container(
            padding: EdgeInsets.all(5.0),
            child: Column(
              children: <Widget>[
                ListTile(
                leading: Icon(Icons.place, size: 50,),
                title: Text(evento.name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
                subtitle: Text('A una distancia de '+evento.distance.toString()+'m', style: TextStyle( fontSize: 15)),
                ),
                
                Container(
                  padding: EdgeInsets.all(5.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Icon(Icons.people),
                          SizedBox(width: 10,),
                          Text("Juan, Pedro, Alberto y 37 más"),
                        ],
                      ),
                      Text(evento.price.toString()+'€', style: TextStyle(fontSize:25, fontWeight: FontWeight.bold),),
                    ],
                  ),
                )

              ]),
          )
        ],
      ),
    );


    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(2.0, 10.0)
          )
        ]
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: GestureDetector(
          onTap:()=>print("tocado!"),//CONTINUAR AQUI EL TOQUE DE LA TARJETA
          child: card,
        ),
      ),
    );
  }

}