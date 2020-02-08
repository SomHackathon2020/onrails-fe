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
    return Scaffold(
      appBar: AppBar(
        title: Text('Amigos'),
      ),
      body: Stack(
        children: <Widget>[
            _crearLista(),
        ],
      ),);
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

    
    _listaUsers.add("Clara Lago");
    _image.add("https://www.un.org/pga/72/wp-content/uploads/sites/51/2017/08/dummy-profile-300x300.jpg");
    _level.add("9");

    _image.add("https://www.un.org/pga/72/wp-content/uploads/sites/51/2017/08/dummy-profile-300x300.jpg");
    _listaUsers.add("Pepe Pizuelo");
    _level.add("5");

    _image.add("https://www.un.org/pga/72/wp-content/uploads/sites/51/2017/08/dummy-profile-300x300.jpg");
    _listaUsers.add("Lola Flores");
    _level.add("10");

   
    _image.add("https://www.mundodeportivo.com/r/GODO/MD/p5/MasQueDeporte/Imagenes/2018/10/24/Recortada/img_femartinez_20181010-125104_imagenes_md_otras_fuentes_captura-kcOG-U452531892714hYG-980x554@MundoDeportivo-Web.JPG");
    _listaUsers.add("Leo Messi");
    _level.add("11");

    _image.add("https://www.un.org/pga/72/wp-content/uploads/sites/51/2017/08/dummy-profile-300x300.jpg");
    _listaUsers.add("Perez de los Cobos");
    _level.add("5");
    //
    for (var i = 0; i<5 ;i++){
      _image.add("https://www.un.org/pga/72/wp-content/uploads/sites/51/2017/08/dummy-profile-300x300.jpg");
      _listaUsers.add("Carlos Flores");
      _level.add("5");
    }

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