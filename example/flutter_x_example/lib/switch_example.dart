import 'package:flutter_x/flutter_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class SwitchExample extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return XScaffold(
      navigationBar: XNavigationBar(
        title: "SwicthExample",        
      ),
      content: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
              XSwitch(
                value: true,
                onChanged: (bool value) {
                },
              )

          ],
        ),
      ),
    );
  }
}
