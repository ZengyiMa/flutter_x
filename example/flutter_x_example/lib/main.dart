import 'package:flutter_x/flutter_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return FXApp(widget: HomePage());
  }
}

class HomePage extends StatelessWidget {
  HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FXScaffold(
        navigationBar: FXNavigationBar(title: "Flutter-x Example"),
        content: ListView(
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                    top: 1.5,
                    right: 2.25,
                  ),
                  child: Text(
                    "asdasd",
                    style: TextStyle(color: CupertinoColors.inactiveGray),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 0.5,
                    left: 2.25,
                  ),
                  child: Icon(
                    CupertinoIcons.forward,
                    color: CupertinoColors.inactiveGray,
                    size: 21.0,
                  ),
                ),
                Padding(
          padding: const EdgeInsets.only(right: 8.5),
        )
              ],
            ),
          ],
        ));
  }
}
