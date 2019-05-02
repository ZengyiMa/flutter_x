import 'package:flutter_x/flutter_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class SwitchExample extends StatefulWidget {
  // This widget is the root of your application.
  @override
  State<StatefulWidget> createState() {
    return _SwitchExampleState();
  }
}

class _SwitchExampleState extends State<SwitchExample> {
  bool switchValue = false;

  @override
  Widget build(BuildContext context) {
    return XScaffold(
      navigationBar: XNavigationBar(
        title: "Swicth",
      ),
      content: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
              Text("Normal: "),
              XSwitch(
                value: switchValue,
                onChanged: (bool value) {
                  this.setState(() {
                    switchValue = value;
                  });
                },
              )
            ]),
            Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
              Text("Disbale - Value is True: "),
              XSwitch(
                inactiveTrackColor: Colors.grey,
                value: true,
                onChanged: null,
              )
            ]),
            Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
              Text("Disbale - Value is False: "),
              XSwitch(
                inactiveTrackColor: Colors.grey,
                value: false,
                onChanged: null,
              )
            ]),
          ],
        ),
      ),
    );
  }
}
