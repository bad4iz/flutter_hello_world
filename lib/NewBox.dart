import 'package:flutter/material.dart';
import 'package:flutter_hello_world/NewsBoxFavourit.dart';

class NewBox extends StatelessWidget {
  final String _title;
  final String _text;
  String _imageUrl;

  int _num;
  bool _like;

  NewBox (this._title, this._text, {String imageUrl, int num = 0, bool like = false}) {
    _imageUrl = imageUrl;
    _num = num;
    _like = like;
  }

  @override
  Widget build(BuildContext context) {
    if(_imageUrl != null && _imageUrl != '') return Container(
      color: Colors.black12,
      height: 100.0,
      child: new Row(children: <Widget>[
        new Image.network(_imageUrl, width: 100.0, height: 100.0, fit: BoxFit.cover,),
        Expanded ( child:  new Container(
          padding: new EdgeInsets.all(10.0),
          child: new Column(children: <Widget>[
            new Text(_title, style: new TextStyle(fontSize: 20.0), overflow: TextOverflow.ellipsis,),
            Expanded ( child: new Text(_text, softWrap: true, textAlign: TextAlign.justify,))
          ],),
        )
        ),
        NewsBoxFavourit(_num, _like)
      ],),
    );
  }

}
