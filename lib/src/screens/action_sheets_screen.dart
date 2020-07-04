import 'package:flutter/cupertino.dart';

class ActionSheetScreen extends StatefulWidget {
  ActionSheetScreen({Key key}) : super(key: key);

  @override
  _ActionSheetScreenState createState() => _ActionSheetScreenState();
}

class _ActionSheetScreenState extends State<ActionSheetScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('Action Sheets and alerts'),
          previousPageTitle: 'Widgets',
        ),
        child: SafeArea(
          child: Column(
            children: <Widget>[
              CupertinoButton.filled(child: Text('Alert'), onPressed: () {})
            ],
          ),
        ));
  }
}
