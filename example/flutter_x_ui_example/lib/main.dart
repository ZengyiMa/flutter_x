import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_x_ui/flutter_x_ui.dart';

// Page
import 'navigation_example.dart';
import 'switch_example.dart';
import 'button_example.dart';
import 'scaffold_example.dart';

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
        "scaffold_example":(context) => new ScaffoldExample(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({Key key}) : super(key: key);

  final List pages = [
    {"title": "Scaffold", "pageName":"scaffold_example"},
    {"title": "NavigationBar", "pageName": "navigation_example"},
    {"title": "Switch", "pageName": "switch_example"},
    {"title": "Button", "pageName": "button_example"},
  ];
  @override
  Widget build(BuildContext context) {
    return XScaffold(
        navigationBar: XNavigationBar(title: "Flutter-x UI Widget Example"),
        content: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.fromLTRB(0, 88, 0, 64),
          children: this.getWidgets(context),
        ));
  }

  List<Widget> getWidgets(BuildContext context) {
    List<Widget> list = List<Widget>();
    list.add(Container(
        padding: EdgeInsets.all(40),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Flutter X UI',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: Color(0xff000000))),
              Container(
                  margin: EdgeInsets.only(top: 4),
                  child: Text(
                      'Flutter X UI 基于 Flutter 多端一致性的 UI 框架，一份代码在多个平台上带来一致性又具有平台特色的体验',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                          color: Color(0x80000000))))
            ])));
    for (var item in pages) {
      list.add(
        GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, item["pageName"]);
            },
            child: Container(
              margin: EdgeInsets.fromLTRB(16, 0, 16, 0),
              height: 44,
              decoration: BoxDecoration(
                  border: Border(
                bottom: BorderSide(width: 1.0, color: Color(0xFFC7C7CC)),
              )),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    child: Text(item["title"]),
                  ),
                  Container(
                    child: Icon(
                      CupertinoIcons.forward,
                      color: Color(0xFFC7C7CC),
                      size: 21.0,
                    ),
                  ),
                ],
              ),
            )),
      );
    }
    return list;
  }
}
