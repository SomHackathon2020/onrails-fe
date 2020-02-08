
import 'package:flutter/cupertino.dart';
import 'package:on_rails_app/pages/homePage.dart';
<<<<<<< HEAD
import 'package:on_rails_app/pages/logIn.dart';

=======
import 'package:on_rails_app/pages/contactPage.dart';

import '../pages/contactPage.dart';
>>>>>>> c26b9383a75eb20bdd8bf2bb7ad4b50d9a84660b

Map<String, WidgetBuilder> getApplicationRoutes() {

  return <String, WidgetBuilder> {
      '/'      : ( BuildContext context ) => HomePage(),
<<<<<<< HEAD
       'logIn'      : ( BuildContext context ) => LogIn(),
=======
      'contact' : (BuildContext context ) => ContactPage(),
>>>>>>> c26b9383a75eb20bdd8bf2bb7ad4b50d9a84660b
  };

}