import 'package:flutter/material.dart';

import 'dart:async';

import '../components/bottomNav.dart';


class ContactPage extends StatefulWidget {
  @override
  _ListaPageState createState() => _ListaPageState();
}

class _ListaPageState extends State<ContactPage> {

  ScrollController _scrollController = new ScrollController();

  List<String> _listaUsers = new List();
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
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact'),
      ),
      body: Stack(
        children: <Widget>[
            _crearLista(),
        ],
      ),
      bottomNavigationBar: BottomNav(),
      
      
    );
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
              //backgroundImage: (),
              ),
              title: Text(_listaUsers[index]),
          );
        }
      )
    );

  }

  Future<Null> obtenerPagina1() async {

    final duration = new Duration( seconds: 2 );
    new Timer( duration, () {

      _listaUsers.clear();
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
    _listaUsers.add("John Deere");
    _listaUsers.add("Clara Lago");
    _listaUsers.add("Pepe Pizuelo");
    _listaUsers.add("Lola Flores");
    _listaUsers.add("Leo Messi");
    _listaUsers.add("Perez de los Cobos");

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



    _agregarUsu();

  }

}