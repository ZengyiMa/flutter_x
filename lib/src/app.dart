import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'app_theme.dart';
import 'platform.dart';

class FXApp extends StatefulWidget {
   FXApp({Key key, this.widget, this.theme, this.routes, this.style = FXAppStyle.auto})
      : super(key: key) {
        FXPlatform.appStyle = style;
      }

  final Widget widget;
  final FXAppTheme theme;
  final Map<String, WidgetBuilder> routes;
  final FXAppStyle style;

  @override
  _FXAppState createState() {
    return _FXAppState();
  }
}

class _FXAppState extends State<FXApp> {
  @override
  Widget build(BuildContext context) {
    if (FXPlatform.style() == FXAppStyle.material) {
      return MaterialApp(
          home: this.widget.widget,
          theme: this.widget.theme == null
              ? null
              : ThemeData(
                  primaryColor: this.widget.theme.primaryColor,
                  appBarTheme: AppBarTheme(
                      color: this.widget.theme.navigationBarBackgroundColor,
                      textTheme: TextTheme(title: this.widget.theme.titleStyle))),
          routes: this.widget.routes);
    } else if (FXPlatform.style() == FXAppStyle.cupertino) {
      return CupertinoApp(
          home: this.widget.widget,
          theme: this.widget.theme == null
              ? null
              : CupertinoThemeData(
                  primaryColor: this.widget.theme.primaryColor,
                  barBackgroundColor: this.widget.theme.navigationBarBackgroundColor,
                  textTheme: CupertinoTextThemeData(
                      navTitleTextStyle: this.widget.theme.titleStyle)),
          routes: this.widget.routes);
    } else {
      return null;
    }
  }
  
}
