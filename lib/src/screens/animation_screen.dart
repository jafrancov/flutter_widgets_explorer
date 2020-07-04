import 'dart:math';

import 'package:flutter/cupertino.dart';

class AnimationScreen extends StatefulWidget{
  @override
  _AnimationScreenState createState() => _AnimationScreenState();
}

class _AnimationScreenState extends State<AnimationScreen>{

  double _width  = 50;
  double _height = 50;
  Color _color = CupertinoColors.activeGreen;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8.0);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('Animation Container'),
        ),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            Center(
              child: AnimatedContainer(
                width: _width,
                height: _height,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: _color,
                    borderRadius: _borderRadius
                ),
                duration: Duration(seconds: 1),
                curve: Curves.fastOutSlowIn,
              ),
            ),
            Positioned(
              bottom: 100,
              child: CupertinoButton.filled(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Icon(CupertinoIcons.play_arrow_solid),
                onPressed: (){
                  setState(() {
                    final random = Random();

                    _width = random.nextInt(300).toDouble();
                    _height = random.nextInt(300).toDouble();
                    _color = Color.fromRGBO(
                        random.nextInt(256),
                        random.nextInt(256),
                        random.nextInt(256),
                        1);

                    _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble());
                  });
                },
              ),
            )
          ],
        )
    );
  }
}
