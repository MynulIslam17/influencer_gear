import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:influencer_gear_project/widget/brands_name.dart';
import 'package:influencer_gear_project/widget/custome_btn.dart';
import 'package:influencer_gear_project/widget/footer_design.dart';
import 'package:influencer_gear_project/widget/product_card.dart';
import 'package:influencer_gear_project/widget/top_banner_image.dart';
import 'package:influencer_gear_project/widget/banner_content.dart';

class SmallScreen extends StatelessWidget {
  const SmallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // gets the size of screen
    final Size screenSize= MediaQuery.of(context).size;
    final width=screenSize.width;
    final height=screenSize.height;

    return Scaffold(

        appBar: AppBar(
          toolbarHeight: 50,
          title: Text("Influencer Products",style: TextStyle(fontSize: 13.sp.clamp(12, 16)),),
          backgroundColor: Colors.white,
          actions: [

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: InkWell(
                onTap:(){},
                child: Image.asset("assets/images/cart2.png",height: 25.r,
                  width: 19.r,
                  fit: BoxFit.contain,),
              ),
            ),




          ],


        ),

        drawer: Drawer(
          backgroundColor: Colors.white,


          child: ListView(

            children: [

              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.pink
                ),
                child: Text("Influencer product",style: TextStyle(color: Colors.white),),

              ),

              ListTile(
                onTap: (){},
                leading: Icon(Icons.home),
                title: Text("Home",style: TextStyle(fontSize: 12.sp.clamp(10, 15),color: Colors.black,fontWeight: FontWeight.bold),
                ),

              ),
              ListTile(
                onTap: (){},
                leading: Icon(Icons.device_hub),
                title: Text("Products",style: TextStyle(fontSize: 12.sp.clamp(10, 15),color: Colors.black,fontWeight: FontWeight.bold),
                ),

              ),
              ListTile(
                onTap: (){},
                leading: Icon(Icons.login),
                title: Text("Logout",style: TextStyle(fontSize: 12.sp.clamp(10, 15),color: Colors.black,fontWeight: FontWeight.bold),
                ),

              ),
              ListTile(
                onTap: (){},
                leading: Icon(Icons.logout),
                title: Text("Signout",style: TextStyle(fontSize: 12.sp.clamp(10, 15),color: Colors.black,fontWeight: FontWeight.bold),
                ),

              ),






            ],



          ),


        ),


      body: SingleChildScrollView(

          child: Column(
            spacing: height * 0.06,

            children: [

              // whole deign part
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Center(

                  child: Column(  // main body

                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [

                      SizedBox(height: 25.h,), // for a margin


                      TopBannerImage(), // top banner image


                      SizedBox(height: 15.h,),

                      BannerContent(title:"Start your Journey as Influencer",
                      subTitle: " Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sem vestibulum sed scelerisque eros. Lectus faucibus.",
                      btnText:"Prebook Now",), // banner text

                      SizedBox(height: 30.h,),


                      // brand name
                      BrandsName(),

                      SizedBox(height: 30.h,),

                      Text("Popular Collection",style: TextStyle(fontSize: 14.sp.clamp(10, 22),fontWeight: FontWeight.bold),),
                      SizedBox(height: 10.h,),

                      // items
                      ProductCard(),

                      SizedBox(height: 20.h,),

                      // see more clickable text
                      InkWell(
                        onTap: (){},

                        child: SizedBox(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            spacing: width * 0.02,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text("See More",style: TextStyle(fontSize: 16.sp.clamp(7, 20),color: Colors.pink),),
                              Icon(Icons.arrow_forward,size: 15.r,color: Colors.pink,)

                            ],
                          ),
                        ),
                      ),

                      SizedBox(height: 20.h,),
                      // some  text about app
                      Text("Featured products at one",style: TextStyle(fontSize: 24.sp.clamp(17, 30),fontWeight: FontWeight.bold,color: Color(0xff0A0826)),),
                      SizedBox(height: 5.h,),
                      Text("Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.",style: TextStyle(fontSize: 16.sp.clamp(10, 18),color: Color(0xff6C6C6C)),),


                      SizedBox(height: 20.h,),


                      CustomeBtn(text: "Join Now",),

                      SizedBox(height: 20.h),


                      SizedBox(
                        width: width * 0.8,
                        child: AspectRatio(
                          aspectRatio: 16/7,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(6.r),
                            child: Image.asset("assets/images/gear.png",
                              fit: BoxFit.cover,
                            ),

                          ),
                        ),
                      ),




                    ],




                  ),
                ),
              ),

              // footer design part

              FooterDesign()




            ],
          )
      )


    );
  }
}
