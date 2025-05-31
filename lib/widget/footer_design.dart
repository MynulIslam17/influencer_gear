import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FooterDesign extends StatelessWidget {
  const FooterDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return   Container(
        decoration: BoxDecoration(
            color: Color(0xff0A0826)
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40),
          child: Column(

            children: [

              Text("Influencer products",style: TextStyle(fontSize: 16.sp.clamp(9, 18),fontWeight: FontWeight.bold,color: Colors.white),),
              SizedBox(height: 4.h,),
              Text("Copyright © 2020  influencer products",style: TextStyle(fontSize: 12.sp.clamp(7, 14),fontWeight: FontWeight.bold,color: Color(0xffD9DBE1)),),
              SizedBox(height: 7.h,),
              Text("All rights reserved",style: TextStyle(fontSize: 12.sp.clamp(7, 14),fontWeight: FontWeight.bold,color: Color(0xffD9DBE1)),),

              SizedBox(height: 20.h,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Icon(Icons.facebook,color: Colors.white,size: 20.r,),
                  SizedBox(width: 10.w,),
                  Icon(Icons.snapchat,color: Colors.white,size: 20.r,),
                  SizedBox(width: 10.w,),
                  Icon(Icons.whatshot,color: Colors.white,size: 20.r,),
                  SizedBox(width: 10.w,),
                  Icon(Icons.mail, color: Colors.white,size: 20.r,),





                ],
              )





            ],
          ),
        )

    );
  }
}
