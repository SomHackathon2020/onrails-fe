import 'package:flutter/material.dart';
import 'package:on_rails_app/routes/routes.dart';
import 'components/bottomNav.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  // This widget is the root of your application.


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'NOMBRE DE LA APP',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      initialRoute: 'contact',
      routes: getApplicationRoutes(),
    );
  }
}




