import 'package:flutter_x/flutter_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

// Page
import 'navigation_example.dart';
import 'switch_example.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return XApp(
      widget: HomePage(),
      routes: {
        "navigation_example": (context) => new NavigationExample(),
        "switch_example": (context) => new SwitchExample()
      },
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({Key key}) : super(key: key);

  final List demo = [
    {"title": "NavigationBar", "pageName": "navigation_example"},
    {"title": "Switch", "pageName": "switch_example"},
  ];

  @override
  Widget build(BuildContext context) {
    return XScaffold(
        navigationBar: XNavigationBar(title: "Flutter-x Widget Example"),
        content: 
        ListView.separated(
          itemCount: demo.length,
          itemBuilder: (BuildContext context, int index) {
            return SizedBox(
                height: 44.0,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, demo[index]["pageName"]);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.fromLTRB(16, 10, 16, 5),
                        child: Text(demo[index]["title"]),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(0, 10, 8, 5),
                        child: Icon(
                          CupertinoIcons.forward,
                          color: Color(0xFFC7C7CC),
                          size: 21.0,
                        ),
                      ),
                    ],
                  ),
                ));
          },
          separatorBuilder: (BuildContext context, int index) {
            return Divider(
              indent: 16,
              color: CupertinoColors.inactiveGray,
            );
          },
        ));
  }
}
