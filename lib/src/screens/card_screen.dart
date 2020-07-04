import 'package:flutter/cupertino.dart';

class CardScreen extends StatelessWidget {
  CardScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Cards'),
      ),
      child: Center(
        child: Container(
          child: Text('Cards'),
        ),
      ),
    );
  }
}
