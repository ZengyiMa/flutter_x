import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart' as Material;
import 'package:flutter/cupertino.dart' as Cupertino;
import 'dart:io';
import 'app_theme.dart';



class App extends StatelessWidget {
  const App({Key key, this.widget, this.theme}) : super(key: key);

  final Widget widget;
  final AppTheme theme;

  @override
  Widget build(BuildContext context) {
    if (Platform.isAndroid) {
      return Material.MaterialApp(
        home: widget,
        theme: Material.ThemeData(
          primaryColor: theme.primaryColor,
          appBarTheme: Material.AppBarTheme(
            color: theme.navigationBarBackgroundColor,
            textTheme: Material.TextTheme(
              title: theme.titleStyle
            )
          )
        ),
      );
    } else if (Platform.isIOS) {
      return Cupertino.CupertinoApp(
        home: widget,
        theme: Cupertino.CupertinoThemeData(
          primaryColor: theme.primaryColor,
          barBackgroundColor: theme.navigationBarBackgroundColor,
          textTheme: Cupertino.CupertinoTextThemeData(
            navTitleTextStyle: theme.titleStyle
          )
        ),
      );
    } else {
      return null;
    }
  }
}
