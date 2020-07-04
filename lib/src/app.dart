import 'package:flutter/cupertino.dart';
import 'package:widgets_explorer/src/screens/home_screen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Cupertino App',
      home: HomeScreen()
    );
  }
}
