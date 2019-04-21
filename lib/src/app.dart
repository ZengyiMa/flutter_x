import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io';
import 'app_theme.dart';

class FXApp extends StatelessWidget {
  const FXApp({Key key, this.widget, this.theme, this.routes})
      : super(key: key);

  final Widget widget;
  final FXAppTheme theme;

  final Map<String, WidgetBuilder> routes;

  @override
  Widget build(BuildContext context) {
    if (Platform.isAndroid) {
      return MaterialApp(
          home: widget,
          theme: theme == null
              ? null
              : ThemeData(
                  primaryColor: theme.primaryColor,
                  appBarTheme: AppBarTheme(
                      color: theme.navigationBarBackgroundColor,
                      textTheme: TextTheme(title: theme.titleStyle))),
          routes: routes);
    } else if (Platform.isIOS) {
      return CupertinoApp(
          home: widget,
          theme: theme == null
              ? null
              : CupertinoThemeData(
                  primaryColor: theme.primaryColor,
                  barBackgroundColor: theme.navigationBarBackgroundColor,
                  textTheme: CupertinoTextThemeData(
                      navTitleTextStyle: theme.titleStyle)),
          routes: routes);
    } else {
      return null;
    }
  }
}
