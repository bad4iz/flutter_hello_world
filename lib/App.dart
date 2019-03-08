import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Text('my text');
  }

}

class NewBox extends StatelessWidget {
  final String _title;
  final String _text;
  String _imageUrl;

  NewBox (this._title, this._text, {String imageUrl}) {
    _imageUrl = imageUrl;
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
    )
      ],),
    );
  }

}


class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  new MaterialApp(
        debugShowCheckedModeBanner: false,
        home: new Scaffold(
            appBar: new AppBar(title: new Text('Flutter.su')),
            body: new NewBox('Flutter allows you to build beautiful native',
                'Flutter\'s hot reload helps you quickly and easily experiment, build UIs, add features, and fix bugs faster. Experience sub-second reload times, without losing state, on emulators, simulators, and hardware for iOS and Android.',
                imageUrl: 'https://i.pinimg.com/736x/d7/42/6d/d7426d4d0232a02ba8ea921ba8310d50--red-s-man-shirt.jpg')
        )
    );
  }
}
