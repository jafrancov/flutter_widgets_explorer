import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  CardScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: CustomScrollView(
      slivers: <Widget>[
        CupertinoSliverNavigationBar(
          largeTitle: Text('Cards'),
        ),
        SliverList(
            delegate: SliverChildListDelegate([
          _cardTipo1(),
          _cardtipo2(context),
          _cardTipo1(),
          _cardtipo2(context),
          _cardTipo1(),
          _cardtipo2(context),
          _cardTipo1(),
          _cardtipo2(context),
        ]))
      ],
    ));
  }

  Widget _cardTipo1() {
    return Card(
      margin: EdgeInsets.all(20.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      elevation: 15.0,
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(CupertinoIcons.photo_camera),
            title: Text('This is a card title'),
            subtitle: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'),
          )
        ],
      ),
    );
  }

  Widget _cardtipo2(BuildContext context) {
    final _card = Stack(alignment: Alignment.bottomCenter, children: <Widget>[
      FadeInImage(
        placeholder: AssetImage('assets/cupertino_activity_indicator.gif'),
        image: NetworkImage(
            'https://www.nationalgeographic.com/content/dam/travel/rights-exempt/2019-travel-photo-contest/epic-landscapes/2019-travel-photo-contest-epic-landscapes031.jpg'),
        fadeOutDuration: Duration(milliseconds: 200),
        fit: BoxFit.cover,
      ),
      Opacity(
          opacity: 0.7,
          child: Container(
            color: CupertinoColors.black,
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            height: 80.0,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('2020-07-04',
                    style: TextStyle(color: CupertinoColors.white)),
                Text('Park Lake',
                    style: TextStyle(
                        color: CupertinoColors.white, fontSize: 25.0)),
              ],
            ),
          )),
    ]);

    return Container(
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          color: CupertinoColors.white,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
                color: CupertinoColors.darkBackgroundGray.withOpacity(.7),
                blurRadius: 8.0,
                offset: Offset(0.0, 5.0))
          ]),
      child: ClipRRect(borderRadius: BorderRadius.circular(10.0), child: _card),
    );
  }
}
