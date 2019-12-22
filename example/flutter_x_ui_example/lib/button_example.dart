import 'package:flutter_x_ui/flutter_x_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ButtonExample extends StatefulWidget {
  // This widget is the root of your application.
  @override
  State<StatefulWidget> createState() {
    return _ButtonExample();
  }
}

class _ButtonExample extends State<ButtonExample> {
  bool switchValue = false;

  @override
  Widget build(BuildContext context) {
    return XScaffold(
      navigationBar: XNavigationBar(
        title: "Button",
      ),
      content: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
              Text("Normal: "),
              XButton(
               child: Text("Button Text"),
               onPressed: () => {

               },
               color: Colors.blue,
               padding: EdgeInsets.all(16),
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
