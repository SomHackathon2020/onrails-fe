import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:on_rails_app/models/usuario.dart';
import 'package:on_rails_app/providers/UserProvider.dart';

import '../components/actividadComponent.dart';

class ProfilePage extends StatelessWidget {
  
  UserProvider userProvider;
  
  @override
  Widget build(BuildContext context) {
    userProvider = UserProvider();

    return Scaffold(

      body: SafeArea(
        child: ListView(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[            
            Container(
                  child: FutureBuilder(
                    future: userProvider.getMyUserInfo(),
                    builder: (BuildContext context, AsyncSnapshot<User> snapshot) {
                      if(snapshot.hasData){
                        return Center(
                          child: Container(
                            width: 200.0,
                            height: 200.0,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              backgroundImage: MemoryImage(base64Decode(snapshot.data.picture))
                            ),
                          ),
                        );
                      }else{
                        return Center(child: CircularProgressIndicator());
                      }
                    },
                  ),
              ),
            _getProfile(userProvider),

            _textLogro(),
            //
            _getLogros(),
            //
            _getTitleLast(),
            //
            _getLastActivities()
          ],
        ),
      ),
    );
  }

  Widget _getTitleLast(){
    return Container(
      padding: EdgeInsets.symmetric(vertical:25),
      child: Title(
                color: Colors.black, child: 
                Text('Actividades Recientes',
                textAlign: TextAlign.center, 
                style: TextStyle(
                  fontSize: 22
                ),
              )
      )
    );
  }
  
  Widget _getProfile(UserProvider provider){
    return Container(
      padding: EdgeInsets.symmetric(vertical:25),
      child:FutureBuilder(
        future: provider.getMyUserInfo(),
        builder: (BuildContext context, AsyncSnapshot<User> snapshot) {
          if(snapshot.hasData){
              return Title(
                color: Colors.black, child: 
                Text(snapshot.data.name,
                textAlign: TextAlign.center, 
                style: TextStyle(
                  fontSize: 22
                ),
              )
              );
          }else{
              return Text("");
          }
        },
      ),
      
       
    );
  }

  Widget _textLogro() {
     return Container(
            child: Title(
                color: Colors.black, child: 
                Text('Logros',
                textAlign: TextAlign.center, 
                style: TextStyle(
                  fontSize: 22
                ),
                
              )
            )
    );
  }

  Container _getLastActivities(){
    return Container(
          height: 300.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(width: 160.0,child: _minCard()),
              Container(
                width: 160.0,
                color: Colors.blue,
              ),
              //new Padding(padding: new EdgeInsets.all(5.00)),
              Container(
                width: 160.0,
                color: Colors.green,
              ),
              Container(
                width: 160.0,
                color: Colors.yellow,
              ),
              Container(
                width: 160.0,
                color: Colors.orange,
              ),
            ],
          ),
        );
  }

  Widget _getLogros(){
    String url = "https://media.istockphoto.com/vectors/best-concept-design-trophy-for-victory-award-championship-achievement-vector-id1025282144?k=6&m=1025282144&s=170667a&w=0&h=7hggqlqejAnobH9g-ElQLWU1PfGOy5iUNHtI2onb8Yg=";
    List<String> images = new List();
    return Container(
      padding: EdgeInsets.symmetric(horizontal:25),
      // clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          _putAchieve(url, 50, images),
          _putAchieve(url, 50, images)
          //Image.network("https://www.sabermassermas.com/wp-content/uploads/2013/10/Qu%C3%A9-es-y-c%C3%B3mo-usar-la-Banca-M%C3%B3vil-a-su-favor.png"),
        ]
      )
    );
  }
}

Container _putAchieve(String url, double ample, List<String> images){
  return Container(
    padding: EdgeInsets.all(5.0),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              width: ample,
              child: Image.network(url)
            )
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              width: 50,
              child: Image.network(url)
            )
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              width: 50,
              child: Image.network(url)
            )
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              width: 50,
              child: Image.network(url)
            )
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              width: 50,
              child: Image.network(url)
            )
          ],
        ),
      ]
    )
  );
}

Widget _minCard() {
  final card = Container(
      // clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Image.network("https://www.sabermassermas.com/wp-content/uploads/2013/10/Qu%C3%A9-es-y-c%C3%B3mo-usar-la-Banca-M%C3%B3vil-a-su-favor.png"),
          Container(
            padding: EdgeInsets.all(5.0),
            child: Column(
              children: <Widget>[
                ListTile(
                leading: Icon(Icons.phone_android, size: 50,),
                title: Text('Aprende a usar el Móvil', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15))
                ),
                
                Container(
                  padding: EdgeInsets.all(5.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Gratis", style: TextStyle(fontSize:25, fontWeight: FontWeight.bold)),
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
