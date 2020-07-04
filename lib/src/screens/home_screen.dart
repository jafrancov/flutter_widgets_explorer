import 'package:flutter/cupertino.dart';
import 'package:widgets_explorer/src/routes/routes.dart';

import 'animation_screen.dart';
import 'card_screen.dart';
import 'widgets_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home), title: Text('Widgets')),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.play_arrow), title: Text('Animation')),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.share_up), title: Text('Cards')),
        ],
      ),
      tabBuilder: (BuildContext context, int index) {
        return CupertinoTabView(
            routes: getApplicationRoutes(),
            builder: (context) {
              switch (index) {
                case 0:
                  return WidgetsScreen();
                  break;
                case 1:
                  return AnimationScreen();
                  break;
                case 2:
                  return CardScreen();
                  break;
                default:
                  return WidgetsScreen();
                  break;
              }
            });
      },
    );
  }
}
