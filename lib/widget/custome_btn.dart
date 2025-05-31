import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomeBtn extends StatelessWidget {
  final String text;
  final Color ? btnColor;

  const CustomeBtn({
    super.key,
    required this.text,
    this.btnColor

  });


  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 47,
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

            Center(child: Text(text,style: TextStyle(fontSize: 10.sp.clamp(2, 15),color: Colors.white),overflow:TextOverflow.ellipsis,)),
            SizedBox(width: 7.w,),

            Icon(Icons.arrow_forward,size: 20)


          ],


        ),


      ),
    );
  }
}
