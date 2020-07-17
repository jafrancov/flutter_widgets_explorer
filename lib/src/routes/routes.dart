import 'package:flutter/cupertino.dart';
import 'package:widgets_explorer/src/screens/action_sheets_screen.dart';
import 'package:widgets_explorer/src/screens/home_screen.dart';
import 'package:widgets_explorer/src/screens/picker_screen.dart';
import 'package:widgets_explorer/src/screens/segmented_screen.dart';
import 'package:widgets_explorer/src/screens/slider_screen.dart';
import 'package:widgets_explorer/src/screens/text_input_screen.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomeScreen(),
    '/actionsheet': (BuildContext context) => ActionSheetScreen(),
    '/inputs': (BuildContext context) => TextInputScreen(),
    '/slider': (BuildContext context) => SliderScreen(),
    '/segmentedcontrol': (BuildContext context) => SegmentedControlScreen(),
    '/pickers': (BuildContext context) => PickerScreen(),
  };
}