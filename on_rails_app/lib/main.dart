import 'package:flutter/material.dart';
import 'package:on_rails_app/routes/routes.dart';


void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  // This widget is the root of your application.


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'PANACEA',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      initialRoute: 'logIn',
      routes: getApplicationRoutes(),
    );
  }
}




