import 'package:flutter_x_ui/flutter_x_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class NavigationExample extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return XScaffold(
      navigationBar: XNavigationBar(
        title: "Navigation",
        actions: <Widget>[
           Container(
                height: 24,
                padding: EdgeInsets.only(right: 10),
                child: Center(
                  child:Text("action")
                ),
              )
        ],
        
      ),
      content: Center(
        child: Text("NavigationExample"),
      ),
    );
  }
}
