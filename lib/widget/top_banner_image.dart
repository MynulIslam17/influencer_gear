
 import 'package:flutter/cupertino.dart';
 import 'package:flutter_svg/flutter_svg.dart';
 import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopBannerImage extends StatelessWidget {
   const TopBannerImage({super.key});

   @override
   Widget build(BuildContext context) {
     return   Center(  // top image part
       child: Stack(
         alignment: Alignment.center,

         children: [

           SvgPicture.asset("assets/images/Circle design.svg", // image backgorunt
             height: 257.h,
             width: 257.w,
           ),

           Image.asset("assets/images/main-camera.png", // image
             height: 190.h,
             width:202.w,
           )




         ],


       ),
     );
   }
 }
