import 'platform.dart';
import 'package:flutter/widgets.dart';

class PlatformBaseStatelessWidget extends StatelessWidget {
  const PlatformBaseStatelessWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (FXPlatform.style() == FXAppStyle.material) {
      return materialStyleWidget(context);
    } else if (FXPlatform.style() == FXAppStyle.cupertino) {
      return cupertinoStyleWidget(context);
    } else {
      return null;
    }
  }

  Widget cupertinoStyleWidget(BuildContext context) {
    return null;
  }

  Widget materialStyleWidget(BuildContext context) {
    return null;
  }
}
