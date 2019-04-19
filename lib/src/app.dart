import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io';
import 'app_theme.dart';

class FXApp extends StatelessWidget {
  const FXApp({Key key, this.widget, this.theme}) : super(key: key);

  final Widget widget;
  final FXAppTheme theme;

  @override
  Widget build(BuildContext context) {
    if (Platform.isAndroid) {
      return MaterialApp(
        home: widget,
        theme: ThemeData(
          primaryColor: theme.primaryColor,
          appBarTheme: AppBarTheme(
            color: theme.navigationBarBackgroundColor,
            textTheme: TextTheme(
              title: theme.titleStyle
            )
          )
        ),
      );
    } else if (Platform.isIOS) {
      return CupertinoApp(
        home: widget,
        theme: CupertinoThemeData(
          primaryColor: theme.primaryColor,
          barBackgroundColor: theme.navigationBarBackgroundColor,
          textTheme: CupertinoTextThemeData(
            navTitleTextStyle: theme.titleStyle
          )
        ),
      );
    } else {
      return null;
    }
  }
}
