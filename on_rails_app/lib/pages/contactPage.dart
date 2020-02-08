import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:on_rails_app/models/usuario.dart';
import 'package:on_rails_app/providers/UserProvider.dart';

import 'dart:async';


class ContactPage extends StatefulWidget {
  @override
  _ListaPageState createState() => _ListaPageState();
}

class _ListaPageState extends State<ContactPage> {

  ScrollController _scrollController = new ScrollController();
  UserProvider userProvider;
  List<String> _listaUsers = new List();
  List<String> _level = new List();
  List<String> _image = new List();
  String _ultimoItem = "";

  @override
  void initState() {
    _agregarUsu();
    super.initState();
    

    _scrollController.addListener(() {

      if( _scrollController.position.pixels == _scrollController.position.maxScrollExtent ) {
         //_agregar10();
        fetchData();
      }

    });

  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }



  @override
  Widget build(BuildContext context) {
    userProvider = new UserProvider();

    return Scaffold(
      appBar: AppBar(
        title: Text('Amigos'),
      ),
      body: _ObtenerListaAmigos(context, userProvider)
      );
  }

  Widget _ObtenerListaAmigos(BuildContext context, UserProvider userProvider){

    return FutureBuilder(
      future: userProvider.getMyFriends(),
      builder: (BuildContext context, AsyncSnapshot<List<User>> snapshot) {
        if(snapshot.hasData){
            return getPageView(snapshot.data);
        }else{
            return Center(child: CircularProgressIndicator());
        }
      },
    );
  }

  Widget getPageView(List<User> userList){
    
    List< Widget> listaDeComponentes = new List<Widget>();
    
    for(User u in userList){
      listaDeComponentes.add(
        Column(
          children: <Widget>[    
          ListTile(
            leading: CircleAvatar(
                backgroundImage: MemoryImage(base64Decode(u.picture)),
                ),
                title: Text(u.name),
                subtitle: Text("Nivel: "+ u.levelsId.toString()),
          ),
          Divider(color: Colors.black,)
          ],
        ),

      );
    }

    return ListView(children: listaDeComponentes);
  }





  Widget _crearLista() {

    return RefreshIndicator(

        onRefresh: obtenerPagina1,

        child: ListView.builder(
        controller: _scrollController,
        itemCount: _listaUsers.length,
        itemBuilder: (BuildContext context, int index ){
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(_image[index]),
              ),
              title: Text(_listaUsers[index]),
              subtitle: Text("Nivel: "+_level[index]),
          );
        }
      )
    );

  }

  Future<Null> obtenerPagina1() async {

    final duration = new Duration( seconds: 2 );
    new Timer( duration, () {

      _listaUsers.clear();
      _level.clear();
      _image.clear();
      //_ultimoItem++;
      _agregarUsu();

    });

    return Future.delayed(duration);

  }



  void _agregarUsu() {

    //for (var i = 1; i < 10; i++) {
      //String 
      //_listaNumeros.add( _ultimoItem );
    //}

    _listaUsers.add("John Smith");
    _image.add("https://cdn.someecards.com/posts/meet-the-conservative-grandpa-on-twitter-who-chrissy-teigan-made-famous-Ku5.png");
    _level.add("10");


    setState(() {});

  }



  Future<Null> fetchData() async {

    setState(() {});

    final duration = new Duration( seconds: 2 );
    return new Timer( duration, respuestaHTTP );

  }

  void respuestaHTTP() {


    _scrollController.animateTo(
      _scrollController.position.pixels + 100,
      curve: Curves.fastOutSlowIn,
      duration: Duration( milliseconds: 250)
    );



    //_agregarUsu();

  }

}