
  import 'package:flutter/cupertino.dart';
  import 'package:flutter_screenutil/flutter_screenutil.dart';
  import 'package:flutter_svg/flutter_svg.dart';

class BrandsName extends StatelessWidget {

    const BrandsName({super.key,

    });

    @override
    Widget build(BuildContext context) {
      return  Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
       alignment: WrapAlignment.center,
        spacing: 15.w,
        runSpacing: 20,


        children: [

          SvgPicture.asset("assets/images/Walmart.svg",height: 30,),
          SvgPicture.asset("assets/images/Ebay.svg",fit: BoxFit.contain,height: 30,),

          SvgPicture.asset("assets/images/Rakuten.svg",fit: BoxFit.contain,height: 30,),
          SvgPicture.asset("assets/images/Amazon.svg",fit: BoxFit.contain,height: 28,),
          SvgPicture.asset("assets/images/Alibaba.svg",fit: BoxFit.contain,height: 30,),
          SvgPicture.asset("assets/images/Target.svg",fit: BoxFit.contain,height: 30,),



        ],




      );
    }
  }
