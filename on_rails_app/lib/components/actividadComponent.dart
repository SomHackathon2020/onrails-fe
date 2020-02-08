import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class EventComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return createCard();
  }

  Widget createCard(){
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(20.0) ),
      child: Column(
        
       // FadeInImage(
         //  image: NetworkImage('https://static.photocdn.pt/images/articles/2017_1/iStock-545347988.jpg'),
        //),

      )
    );
  }
}