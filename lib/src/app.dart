import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key key, this.title, this.widget}) : super(key: key);

  final String title;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      home: widget,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
