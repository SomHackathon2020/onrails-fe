import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class LogIn extends StatelessWidget{

@override
  Widget build(BuildContext context) {
    

    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
        decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
       labelText: "Email"
      ),
    );

    final password = TextFormField(
      autofocus: false,
      obscureText: true,
      decoration: InputDecoration(
        labelText: "Password",
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
         
        },
        padding: EdgeInsets.all(12),
        color: Color.fromARGB(255, 0, 196, 149),
        child: Text('Log In', style: TextStyle(color: Colors.white)),
      ),
    );

    

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 196, 149),
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
            height: 350,
              
              
                child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Log In", style: TextStyle(fontSize: 40), ),
                  
                  SizedBox(height: 48.0),
                  email,
                  SizedBox(height: 8.0),
                  password,
                  SizedBox(height: 24.0),
                  loginButton,
                ],
            ),
              
          ),
        ),
      ),
    );
  } }
  