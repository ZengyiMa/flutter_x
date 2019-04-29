import 'package:flutter_x/flutter_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class NavigationExample extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return FXScaffold(
      navigationBar: FXNavigationBar(
        title: "NavigationExample",
        // backgroundColor: Colors.yellow,
        // titleTextStyle: TextStyle(
        //   color: Colors.white,
        //   fontSize: 16,
        // ),
        // hiddenBottomEffect: true,
        actions: <Widget>[
           Container(
                height: 24,
                padding: EdgeInsets.only(right: 10),
                child: Center(
                  child:Text("action1")
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
