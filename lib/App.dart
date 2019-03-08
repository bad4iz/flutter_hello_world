import 'package:flutter/material.dart';
import 'package:flutter_hello_world/NewBox.dart';


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
