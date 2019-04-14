import 'package:flutter_x/flutter_x.dart';
import 'package:flutter/material.dart' as Material;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return App(
      widget: MyHomePage(),
      theme: AppTheme(
        navigationBarBackgroundColor: Material.Colors.blue,
        titleStyle: TextStyle(
          color: Material.Colors.yellow
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
    return Scaffold(
      navigationBar: NavigationBar(
        title: "Flutter-x Example"
      ),
    );
  }
}
