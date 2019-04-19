import 'package:flutter_x/flutter_x.dart';
export 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return FXApp(
      widget: MyHomePage(),
      theme: FXAppTheme(
        navigationBarBackgroundColor: Colors.blue,
        titleStyle: TextStyle(
          color: Colors.yellow
        )
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
  
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return FXScaffold(
      navigationBar: FXNavigationBar(
        title: "Flutter-x Example"
      ),
    );
  }
}
