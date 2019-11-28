import 'package:flutter_x/flutter_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

// Page
import 'navigation_example.dart';
import 'switch_example.dart';
import 'button_example.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return XApp(
      widget: HomePage(),
      routes: {
        "navigation_example": (context) => new NavigationExample(),
        "switch_example": (context) => new SwitchExample(),
        "button_example": (context) => new ButtonExample(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return XScaffold(
        navigationBar: XNavigationBar(title: "FlutterX Widget Example"),
        content: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, //横轴三个子widget
                childAspectRatio: 1.0 //宽高比为1时，子widget
                ),
            children: <Widget>[
              GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, "navigation_example");
                  },
                  child: Column(children: <Widget>[
                    Text("Navigation")
                  ])),
              GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, "button_example");
                  },
                  child: Column(children: <Widget>[
                    Text("Button")
                  ])),
              GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, "switch_example");
                  },
                  child: Column(children: <Widget>[
                    Text("Switch")
                  ])),
            ]));
  }
}
