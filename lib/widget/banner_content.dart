import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BannerContent extends StatelessWidget {
  final String title;
  final String subTitle;
  final String btnText;
  final   Color ? btnColor;
  const BannerContent({super.key,
    required this.btnText,
    this.btnColor,
    required this.title,
    required this.subTitle

  });

  @override
  Widget build(BuildContext context) {
    return Column(

    crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Text(title,style: TextStyle(fontSize: 28.sp.clamp(20, 30),fontWeight: FontWeight.bold,color: Colors.black),),
        Text(subTitle,style: TextStyle(fontSize: 9.sp.clamp(8, 15)),),
        SizedBox(height: 15.h,),
        SizedBox(
          height: 45,
          width: 196,

          child: ElevatedButton(onPressed: (){},
            style: ElevatedButton.styleFrom(
                backgroundColor: btnColor ?? Color(0xffE02C6D),
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r)
                )
            ),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [

                Center(child: Text(btnText,style: TextStyle(fontSize: 10.sp.clamp(2, 15),color: Colors.white),overflow:TextOverflow.ellipsis,)),
                SizedBox(width: 7.w,),

                Icon(Icons.arrow_forward,size: 20),



              ],


            ),


          ),
        )
      ],
    );
  }
}
