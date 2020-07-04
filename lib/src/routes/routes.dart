import 'package:flutter/cupertino.dart';
import 'package:widgets_explorer/src/screens/action_sheets_screen.dart';
import 'package:widgets_explorer/src/screens/home_screen.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomeScreen(),
    '/actionsheet': (BuildContext context) => ActionSheetScreen()
  };
}