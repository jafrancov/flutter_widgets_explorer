import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  @override
  _SliderScreenState createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _value = 50.0;
  bool _switchValue = false;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Slider and Switch'),
        previousPageTitle: 'Widgets',
      ),
      child: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                _crearSlider(),
                _crearSwitch(),
                Expanded(
                  child: FlutterLogo(
                    size: _value,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _crearSlider() {
    return SizedBox(
      width: double.infinity,
      child: CupertinoSlider(
        min: 50.0,
        max: 400.0,
        value: _value,
        onChanged: (_switchValue)
            ? null
            : (value) {
                setState(() {
                  _value = value;
                });
              },
      ),
    );
  }

  Widget _crearSwitch() {
    return Row(
      children: <Widget>[
        Expanded(child: Text('Bloquear Slider')),
        CupertinoSwitch(
            value: _switchValue,
            onChanged: (bool value) {
              setState(() {
                _switchValue = value;
              });
            }),
      ],
    );
  }
}
