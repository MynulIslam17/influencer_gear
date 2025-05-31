 import 'package:flutter/cupertino.dart';
 import 'package:flutter_screenutil/flutter_screenutil.dart';

class AboutAppText extends StatelessWidget {
   const AboutAppText({super.key});

   @override
   Widget build(BuildContext context) {
     return Column(
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         Text("Featured products at one",style: TextStyle(fontSize: 24.sp.clamp(17, 30),fontWeight: FontWeight.bold,color: Color(0xff0A0826)),),
         SizedBox(height: 5.h,),
         Text("Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.",style: TextStyle(fontSize: 7.sp.clamp(8, 10),color: Color(0xff6C6C6C)),),


       ],
     );
   }
 }
