import 'package:flutter/material.dart';

class NewsBoxFavourit extends StatefulWidget {
  final int _num;
  final bool _like;

  NewsBoxFavourit(this._num, this._like);

  @override
  _NewsBoxFavouritState createState() => _NewsBoxFavouritState(_num, _like);
}

class _NewsBoxFavouritState extends State<NewsBoxFavourit> {
  int num;
  bool like;

  _NewsBoxFavouritState(this.num, this.like);

  void pressButton() {
    setState(() {
      like = !like;

      if(like) num += 1;
      else num -= 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      new Text('В избранном\n $num', textAlign: TextAlign.center,),
      new IconButton(
        icon: new Icon(like ? Icons.star : Icons.star_border, size: 30.0,
      color: Colors.blue[500],),
        onPressed: pressButton,)
    ],);
  }
}
