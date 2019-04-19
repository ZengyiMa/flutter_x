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
    var themeData;
    if (Platform.isAndroid) {
      if (this.theme != null) {
        // Android ThemeData
        themeData = ThemeData(
            primaryColor: theme.primaryColor,
            appBarTheme: AppBarTheme(
                color: theme.navigationBarBackgroundColor,
                textTheme: TextTheme(title: theme.titleStyle)));
      }
      return MaterialApp(home: widget, theme: themeData);
    } else if (Platform.isIOS) {
      if (this.theme != null) {
        // iOS ThemeData
        themeData = CupertinoThemeData(
            primaryColor: theme.primaryColor,
            barBackgroundColor: theme.navigationBarBackgroundColor,
            textTheme:
                CupertinoTextThemeData(navTitleTextStyle: theme.titleStyle));
      }
      return CupertinoApp(
        home: widget,
        theme: themeData,
      );
    } else {
      return null;
    }
  }
}
