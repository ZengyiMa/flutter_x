
import 'package:flutter_x/flutter_x.dart';

class NavigationExample extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return FXScaffold(
      navigationBar: FXNavigationBar(
        title: "NavigationExample",
      ),
      content: Center(
        child: Text("NavigationExample"),
      ),
    );
  }
}

