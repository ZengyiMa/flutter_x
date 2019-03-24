import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key key, this.title, this.home}) : super(key: key);

  final String title;
  final Widget home;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      home: home,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
