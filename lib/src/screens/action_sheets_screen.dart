import 'package:flutter/cupertino.dart';

class ActionSheetScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ActionSheetScreenState();
  }
}

class _ActionSheetScreenState extends State<ActionSheetScreen> {
  String _selectedValue;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('Action Sheet and Alerts'),
          previousPageTitle: 'Widgets',
        ),
        child: SafeArea(
            child: Center(
                child: Column(
          children: <Widget>[
            SizedBox(height: 50.0),
            CupertinoButton.filled(
              padding: EdgeInsets.symmetric(horizontal: 100.0, vertical: 10.0),
              child: Text('Alert'),
              onPressed: () => _showAlert(context),
            ),
            SizedBox(height: 16.0),
            CupertinoButton.filled(
              padding: EdgeInsets.symmetric(horizontal: 70.0, vertical: 10.0),
              child: Text('Action Sheet'),
              onPressed: () => _showActionSheet(context),
            ),
            SizedBox(height: 16.0),
            Text('Has seleccionaro $_selectedValue'),
          ],
        ))));
  }

  void _showAlert(BuildContext context) {
    showCupertinoDialog<String>(
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            title: Text('Guarda los cambios'),
            content: Text('¿Desea guardar los cambios realizados?'),
            actions: <Widget>[
              CupertinoDialogAction(
                child: Text('Cancelar'),
                onPressed: () => Navigator.pop(context, 'Cancelar'),
              ),
              CupertinoDialogAction(
                child: Text('Aceptar'),
                onPressed: () => Navigator.pop(context, 'Aceptar'),
              )
            ],
          );
        }).then((value) => {
          setState(() {
            _selectedValue = value;
          })
    });
  }

  void _showActionSheet(BuildContext context) {
    showCupertinoModalPopup<String>(
        context: context,
        builder: (context) {
          return CupertinoActionSheet(
            title: Text('Framework favorito'),
            message: Text('Selecciona tu framwork multiplataforma favorito'),
            actions: <Widget>[
              CupertinoActionSheetAction(
                child: Text('Flutter'),
//                isDestructiveAction: true,
                onPressed: () => Navigator.pop(context, 'Flutter'),
              ),
              CupertinoActionSheetAction(
                child: Text('React Native'),
                onPressed: () => Navigator.pop(context, 'React Native'),
              ),
              CupertinoActionSheetAction(
                child: Text('Native Script'),
                onPressed: () => Navigator.pop(context, 'Native Script'),
              ),
            ],
            cancelButton:CupertinoActionSheetAction(
              child: Text('Cancelar'),
              isDefaultAction: true,
              onPressed: () => Navigator.pop(context, 'Cancelar'),
            ),
          );
        }).then((value) => {
      setState(() {
        _selectedValue = value;
      })
    });
  }
}
