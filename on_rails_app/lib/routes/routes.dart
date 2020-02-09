
import 'package:flutter/cupertino.dart';
import 'package:on_rails_app/pages/homePage.dart';
import 'package:on_rails_app/pages/contactPage.dart';
import 'package:on_rails_app/pages/logIn.dart';
import 'package:on_rails_app/pages/signUp.dart';

import '../pages/contactPage.dart';
import '../pages/logIn.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {

  return <String, WidgetBuilder> {
      '/'      : ( BuildContext context ) => HomePage(),
      'contact' : (BuildContext context ) => ContactPage(),
      'logIn' : (BuildContext context) => LogIn(),
      'signUp' : (BuildContext context) => SignUp()
  };

}