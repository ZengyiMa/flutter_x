import 'package:flutter_x_ui/flutter_x_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ScaffoldExample extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return XScaffold(
        navigationBar: XNavigationBar(
          title: "ScaffoldExample",
        ),
        content: Container(
          padding: EdgeInsets.all(16),
          child: Center(
            child: Text(
                "This is XScaffold Demo Page, It will different appearence in iOS&Android"),
          ),
        ));
  }
}
