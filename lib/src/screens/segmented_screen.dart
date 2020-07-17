import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SegmentedControlScreen extends StatefulWidget {
  SegmentedControlScreen({Key key}) : super(key: key);

  @override
  _SegmentedControlScreenState createState() => _SegmentedControlScreenState();
}

class _SegmentedControlScreenState extends State<SegmentedControlScreen> {
  final Map<int, Widget> children = const <int, Widget>{
    0: Text('Indigo'),
    1: Text('Teal'),
    2: Text('Cyan'),
  };

  final Map<int, Widget> icons = const <int, Widget>{
    0: Center(
      child: FlutterLogo(
        colors: Colors.indigo,
        size: 200.0,
      ),
    ),
    1: Center(
      child: FlutterLogo(
        colors: Colors.teal,
        size: 200.0,
      ),
    ),
    2: Center(
      child: FlutterLogo(
        colors: Colors.cyan,
        size: 200.0,
      ),
    ),
  };

  int currentSegment = 0;

  void onValueChanged(int newValue) {
    setState(() {
      currentSegment = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: const Text('Segmented Control'),
        previousPageTitle: 'Widgets',
      ),
      child: DefaultTextStyle(
        style: CupertinoTheme.of(context)
            .textTheme
            .textStyle
            .copyWith(fontSize: 15),
        child: SafeArea(
          child: Column(
            children: <Widget>[
              const Padding(padding: EdgeInsets.all(16.0)),
              SizedBox(
                width: 500,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: CupertinoSlidingSegmentedControl<int>(
                    children: children,
                    onValueChanged: onValueChanged,
                    groupValue: currentSegment,
                  ),
                ),
              ),
              Expanded(
                child: icons[currentSegment],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
