import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart' as Material;

class App extends StatelessWidget {
  const App({Key key, this.widget}) : super(key: key);

  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Material.MaterialApp(
      home: widget,
      theme: Material.ThemeData(
        primarySwatch: Material.Colors.blue,
      ),
    );
  }
}
