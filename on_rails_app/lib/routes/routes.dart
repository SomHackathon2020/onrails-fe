import 'package:flutter/cupertino.dart';
import 'package:on_rails_app/pages/homePage.dart';
import 'package:on_rails_app/pages/logIn.dart';


Map<String, WidgetBuilder> getApplicationRoutes() {

  return <String, WidgetBuilder> {
      '/'      : ( BuildContext context ) => HomePage(),
       'logIn'      : ( BuildContext context ) => LogIn(),
  };

}