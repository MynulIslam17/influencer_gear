
import 'package:flutter/cupertino.dart';

class ResponsiveDesign extends StatelessWidget {
  final Widget smallScreen;
  final Widget bigScreen;
  const ResponsiveDesign({super.key,
  required this.smallScreen,
    required this.bigScreen
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context,constraint){
      if(constraint.maxWidth<=700){
        return smallScreen;
      }else{
        return bigScreen;
      }


    }
    );
  }


}
