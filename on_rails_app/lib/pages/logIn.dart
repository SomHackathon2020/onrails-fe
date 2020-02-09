import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class LogIn extends StatelessWidget{

  //  @override
  //  Widget build(BuildContext context) {
  //    return  Scaffold(
  //      body: Container( decoration: BoxDecoration( color: Colors.white,
  //         borderRadius: BorderRadius.circular(8.0),
  //         boxShadow: [
  //           BoxShadow(
  //               color: Colors.black12,
  //               offset: Offset(0.0, 15.0),
  //               blurRadius: 15.0),
  //           BoxShadow(
  //               color: Colors.black12,
  //               offset: Offset(0.0, -10.0),
  //               blurRadius: 10.0),
  //         ])
  //        ,
  //      child: Padding(
  //        padding: const EdgeInsets.all(8.0),
  //        child: Column(
  //          crossAxisAlignment: CrossAxisAlignment.start,
  //          children: <Widget>[
  //              Text('Log In',
  //             style: TextStyle(fontSize: 20),
  //            ),
  //            SizedBox(height: 20.0),
  //            TextFormField(
  //              keyboardType: TextInputType.emailAddress,
  //              decoration: InputDecoration(labelText: "Email Address"),),
  //            TextFormField(
  //              obscureText: true,
  //              keyboardType: TextInputType.emailAddress,
  //            decoration: InputDecoration(labelText: "Password")),
  //            SizedBox(height: 20.0),
  //            RaisedButton(
  //              child: Text("Log In"),
  //              onPressed: (){print("kerjng");},
  //            )
  //          ],
  //        ),
  //      ),),
  //    );
  //  }


@override
  Widget build(BuildContext context) {
    

    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
        decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
       labelText: "Correo Electronico"
      ),
    );

    final password = TextFormField(
      autofocus: false,
      obscureText: true,
      decoration: InputDecoration(
        labelText: "Contraseña",
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        
      ),
    );

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 3),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32),
        ),
        onPressed: () {
         Navigator.pushNamed(context, "/");
        },
        padding: EdgeInsets.all(12),
        color: Color.fromARGB(255, 0, 196, 149),
        child: Text('Iniciar Session', style: TextStyle(color: Colors.white)),
      ),
    );

  final signUpButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 3),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32),
        ),
        onPressed: () {
         Navigator.pushNamed(context, "signUp");
        },
        padding: EdgeInsets.all(12),
        color: Color.fromARGB(255, 0, 196, 149),
        child: Text('Crear Cuenta', style: TextStyle(color: Colors.white)),
      ),
      
      
    );
    

    return Container(
      
      decoration: 
      BoxDecoration(
        image:DecorationImage(image: AssetImage("assets/back.png"),fit: BoxFit.cover)
      )
      ,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal:25),
            decoration: BoxDecoration( color: Colors.white,
            borderRadius: BorderRadius.circular(8.0),
            boxShadow: [
              BoxShadow(
                  color: Colors.black12,
                  offset: Offset(0.0, 15.0),
                  blurRadius: 15.0),
              BoxShadow(
                  color: Colors.black12,
                  offset: Offset(0.0, -10.0),
                  blurRadius: 10.0),
            ]),
            child: SizedBox(
              width: 350,
              height: 400,
                
                
                  child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Iniciar Sesion", style: TextStyle(fontSize: 25), ),
                    
                    SizedBox(height: 48.0),
                    email,
                    SizedBox(height: 8.0),
                    password,
                    SizedBox(height: 24.0),
                    loginButton,
                    signUpButton
                  ],
              ),
                
            ),
          ),
        ),
        
      ),
    );
  } }
  