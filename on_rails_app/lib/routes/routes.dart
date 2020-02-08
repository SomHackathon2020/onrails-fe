import 'package:flutter/cupertino.dart';
import 'package:on_rails_app/pages/homePage.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {

  return <String, WidgetBuilder> {
      '/'      : ( BuildContext context ) => HomePage(),
  };

}