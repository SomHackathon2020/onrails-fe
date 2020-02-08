
import 'package:flutter/cupertino.dart';
import 'package:on_rails_app/pages/homePage.dart';
import 'package:on_rails_app/pages/contactPage.dart';
import 'package:on_rails_app/pages/logIn.dart';

import '../pages/contactPage.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {

  return <String, WidgetBuilder> {
      '/'      : ( BuildContext context ) => HomePage(),
      'contact' : (BuildContext context ) => ContactPage(),
      '/login' : (BuildContext context ) => LogIn(),
  };

}