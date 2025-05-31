import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:influencer_gear_project/widget/about_app_text.dart';
import 'package:influencer_gear_project/widget/brands_name.dart';
import 'package:influencer_gear_project/widget/custome_btn.dart';
import 'package:influencer_gear_project/widget/footer_design.dart';
import 'package:influencer_gear_project/widget/product_card.dart';
import 'package:influencer_gear_project/widget/top_banner_image.dart';
import 'package:influencer_gear_project/widget/banner_content.dart';

class BigScreen extends StatelessWidget {
  const BigScreen({super.key});



  @override
  Widget build(BuildContext context) {

      double maxWidth=0;

    Size size=MediaQuery.of(context).size;
    double width=size.width;

      if (width <= 800) {
        maxWidth=670;
      } else if (width <= 1200) {
        maxWidth=800;// Tablets / small laptops
      } else if (width <= 1400) {
        maxWidth=1000;// Desktops
      } else if (width <= 1800) {
        maxWidth=1200;// Large desktops
      } else {
        maxWidth=1360;// Ultra-wide screens
      }

    return Scaffold(

      appBar: AppBar(
        title: Text("Influencer Products",style: TextStyle(fontSize: 11.sp.clamp(12, 16)),),
        backgroundColor: Colors.white,

        actions: [

          Padding(
            padding: const EdgeInsets.only(right: 6),
            child: TextButton(onPressed: (){},
                child: Text("Home",style: TextStyle(fontSize: 11.sp.clamp(9, 16),fontWeight: FontWeight.w600,color: Colors.black),)
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(right: 6),
            child: TextButton(onPressed: (){},
                child: Text("Products",style: TextStyle(fontSize: 11.sp.clamp(9, 16),fontWeight: FontWeight.w600,color: Colors.black),)
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 6),
            child: TextButton(onPressed: (){},

                child: Text("Login",style: TextStyle(fontSize: 11.sp.clamp(9, 16),fontWeight: FontWeight.w600,color: Colors.black),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 6),
            child: TextButton(onPressed: (){},
                child: Text("Sign out",style: TextStyle(fontSize: 11.sp.clamp(9, 16),fontWeight: FontWeight.w600,color: Colors.black),),
            ),
          ),



          Padding(
            padding: const EdgeInsets.only(right: 6),
            child: IconButton(
                onPressed: (){},
                icon: Icon(Icons.search,
                  size: 20.r,
                  color: Colors.black,),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(onPressed: (){},
                icon: Icon(Icons.shopping_cart,size: 20.r,)
            ),
          )


        ],


      ),

      body:ScrollConfiguration(
        behavior: const ScrollBehavior().copyWith(scrollbars: false),
        child: SingleChildScrollView(

          child: Column(
            children: [
              // body
              ConstrainedBox(
                constraints: BoxConstraints(maxWidth: maxWidth),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                  child: Column(// whole body

                    crossAxisAlignment: CrossAxisAlignment.center,

                    children: [

                      SizedBox(height: 25.h,), // take a margin from app bar
                      // top banner part
                      Row(

                        spacing: 20,

                        children: [


                          Expanded( // top banner text
                            flex: 4,
                            child: BannerContent(title:"Start your Journey as Influencer",
                              subTitle: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sem vestibulum sed scelerisque eros. Lectus faucibus.",
                              btnText:"Prebook Now",),
                          ),

                          Expanded( // top banner image
                              flex: 3,
                              child: TopBannerImage())


                        ],

                      ),
                      SizedBox(height: 40.h,),


                      // brand name part
                      BrandsName(),

                      SizedBox(height: 40.h,),

                      // product item part
                      Text("Popular Collection",style: TextStyle(fontSize: 14.sp.clamp(10, 22),fontWeight: FontWeight.bold),),

                      SizedBox(height: 15.h,),

                      ProductCard(),

                      SizedBox(height: 15.h,),

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
                      SizedBox(height: 40.h,),


                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(

                          spacing: width * 0.06,

                          children: [

                            Expanded(
                              flex: 2,

                              child:  AspectRatio(
                                aspectRatio: 16/11,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(6.r),
                                  child: Image.asset("assets/images/gear.png",
                                    fit: BoxFit.cover,
                                  ),

                                ),
                              ),),

                            Expanded( // about app text
                                flex: 3,
                                child: BannerContent(title: "Featured products at one place",
                                subTitle: "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.",
                                btnText: "Join Now",
                                )
                            ),



                          ],


                        ),
                      ),


                    ],



                  ),
                ),
              ),

              // footer
              SizedBox(height: 25.h,),
              FooterDesign()





            ],
          )
        ),
      ),


    );
  }
}
