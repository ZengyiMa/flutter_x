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
        content: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.fromLTRB(16, 88, 16, 64),
          children: <Widget>[
            Container(
                padding: EdgeInsets.all(40),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                  Text('Flutter UI',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                          color: Color(0xff000000))),
                  Container(
                     margin: EdgeInsets.only(top: 4),
                      child: Text(
                          'Flutter UI 基于 Flutter 多端一致性的 UI 框架，在多个平台上带来一致性的体验',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                              color: Color(0x80000000))))
                ])),
            const Text('Domestic life was never quite my style'),
            const Text('When you smile, you knock me out, I fall apart'),
            const Text('And I thought I was so smart'),
          ],
        ));
  }
}
