import 'package:flutter_x/flutter_x.dart';

class XStatelessWidget<M, C> extends StatelessWidget {
   final M material;
   final C cupertino;
   const XStatelessWidget(
     Key key, 
     {
       this.material,
       this.cupertino,
     }
   );
   
  @override
  Widget build(BuildContext context) {
    if (XPlatform.style() == XAppStyle.material) {
      return materialStyleWidget(context);
    } else if (XPlatform.style() == XAppStyle.cupertino) {
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