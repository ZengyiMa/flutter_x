import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'app_theme.dart';
import 'platform.dart';
import 'base_platform_stateless_widget.dart';

class FXApp extends BasePlatformStatelessWidget {
  FXApp(
      {Key key,
      this.widget,
      this.theme,
      this.routes,
      this.style = FXAppStyle.auto})
      : super(key: key) {
    FXPlatform.appStyle = style;
  }

  final Widget widget;
  final FXAppTheme theme;
  final Map<String, WidgetBuilder> routes;
  final FXAppStyle style;

  @override
  Widget materialStyleWidget(BuildContext context) {
    return MaterialApp(
        home: this.widget,
        theme: this.theme == null
            ? null
            : this.theme.materialThemeData == null
                ? ThemeData(
                    primaryColor: this.theme.primaryColor,
                    appBarTheme: AppBarTheme(
                        color: this.theme.navigationBarBackgroundColor,
                        textTheme:
                            TextTheme(title: this.theme.titleStyle)))
                : this.theme.materialThemeData,
        routes: this.routes);
  }

  @override
  Widget cupertinoStyleWidget(BuildContext context) {
    return CupertinoApp(
        home: this.widget,
        theme: this.theme == null
            ? null
            : this.theme.cupertinoThemeData == null
                ? CupertinoThemeData(
                    primaryColor: this.theme.primaryColor,
                    barBackgroundColor: this.theme.navigationBarBackgroundColor,
                    textTheme: CupertinoTextThemeData(
                        navTitleTextStyle: this.theme.titleStyle))
                : this.theme.cupertinoThemeData,
        routes: this.routes);
  }
}
