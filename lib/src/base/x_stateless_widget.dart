import 'package:flutter_x/flutter_x.dart';

class XStatelessWidget<M, C> extends StatelessWidget {
   final M material;
   final C cupertino;
   XStatelessWidget(
     Key key, 
     {
       this.material,
       this.cupertino,
     }
   );

  @override
  Widget build(BuildContext context) {
    return null;
  }
}