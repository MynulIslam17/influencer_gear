  import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
  import 'package:flutter_screenutil/flutter_screenutil.dart';
  import 'package:flutter_svg/flutter_svg.dart';
  

class ProductCard extends StatelessWidget {


 // Products data
 final List<Map<String,dynamic>>productList=const [
   {
     "id": 1,
     "productName": "Flex Tripod",
     "productImage" : "assets/images/tripod.png",
     "price" : "\$50.48",
     "description": "Wordwide shifting available Buyers protection possible!",
     "rating" : "4.9",
     "stars" : 4
   },
   {
     "id": 2,
     "productName": "microphone",
     "productImage" : "assets/images/mic.png",
     "description": "Wordwide shifting available Buyers protection possible!",
     "price" : "\$39.8",
     "rating" : "3.9",
     "stars" : 3
   },
   {
     "id": 3,
     "productName": "Airbuds",
     "productImage" : "assets/images/airpod.png",
     "description": "Wordwide shifting available Buyers protection possible!",
     "price" : "\$100.00",
     "rating" : "4.4",
     "stars" : 4
   },
   {
     "id": 4,
     "productName": "Drone",
     "productImage" : "assets/images/drone.png",
     "description": "Wordwide shifting available Buyers protection possible!",
     "price" : "\$980.25",
     "rating" : "5.0",
     "stars" : 5
   },
   {
     "id": 5,
     "productName": "Light Setup",
     "productImage" : "assets/images/setup.png",
     "description": "Wordwide shifting available Buyers protection possible!",
     "price" : "\$1200.00",
     "rating" : "2.3",
     "stars" : 2
   },
   {
     "id": 6,
     "productName": "Vlogging Camera",
     "productImage" : "assets/images/camera.png",
     "description": "Wordwide shifting available Buyers protection possible!",
     "price" : "\$1800.00",
     "rating" : "4.4",
     "stars" : 4
   },
   {
     "id": 7,
     "productName": "Green Screen",
     "productImage" : "assets/images/single-light.png",
     "description": "Wordwide shifting available Buyers protection possible!",
     "price" : "\$25.00",
     "rating" : "4.1",
     "stars" : 4
   },

   {
     "id": 8,
     "productName": "Action Camera",
     "productImage" : "assets/images/action.png",
     "description": "Wordwide shifting available Buyers protection possible!",
     "price" : "\$305.00",
     "rating" : "4.9",
     "stars" : 4
   },
   {
     "id": 9,
     "productName": "Photoshoot set",
     "productImage" : "assets/images/lights.png",
     "description": "Wordwide shifting available Buyers protection possible!",
     "price" : "\$305.00",
     "rating" : "4.9",
     "stars" : 4
   },



 ];

    const ProductCard({super.key});
    
    int childCount(BuildContext context){
      double width=MediaQuery.of(context).size.width;
      
      if(width<=480){
        return 1;
      }else if(width<700){
        return 2;
      }else if(width<1100){
        return 3;
      }else{
        return 4;
      }
      
    }
    
    

    @override
    Widget build(BuildContext context) {

      
      return GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount:childCount(context),
            childAspectRatio:0.8
        ),
        itemBuilder: (context,index){

          //get all the product info one by one
          Map<String,dynamic> infoMap=productList[index];
          int id=infoMap["id"];
          String productName=infoMap["productName"];
          String price=infoMap["price"];
          int stars=infoMap["stars"];
          String ratings=infoMap["rating"];
          String image=infoMap["productImage"];
          String description=infoMap["description"];

          return LayoutBuilder(builder: (context,constraint){

            double width=constraint.maxWidth;
            double height=constraint.maxHeight;
            print("$width $height");
            // a design of prodduct card
            return Card(
              elevation: 10,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.r)),
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  spacing: height * 0.03,
                  children: [
                    // product image
                    Expanded(
                        flex:3,
                        child:SizedBox(
                          width: width,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Image.asset(image,fit: BoxFit.cover,),
                          ),
                        )
                    ),


                    // product description
                    Expanded(
                        flex:2,
                        child: SizedBox(
                          width: width,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              // product name
                              Text(productName,style: TextStyle(fontSize: height * 0.06,fontWeight: FontWeight.w800,color: Color(0xff18191F)    ),),
                              SizedBox(height: height * 0.011,),
                              // price
                              Text(price,style: TextStyle(fontSize:height * 0.045,fontWeight: FontWeight.w800,color: Color(0xff18191F)),    ),

                              SizedBox(height:height * 0.02,),
                              // rating and  reviews
                              Row(

                                children: [


                                  ...List.generate(stars, (index){

                                    return  Icon(Icons.star,color: Colors.orange,size: 14.r,);

                                  }),

                                  SizedBox(width: 4.w,),
                                  Text(ratings,style: TextStyle(color: Colors.grey,fontSize: 10.sp.clamp(8, 12),fontWeight: FontWeight.w600),)


                                ],


                              ),
                              SizedBox(height: height * 0.03),


                              // product details
                              Text(description,style: TextStyle(color: Color(0xff787885),fontSize:height * 0.035,overflow: TextOverflow.ellipsis),maxLines: 1,),


                            ],
                          ),
                        )
                    ),


                  ],


                ),
              ),


            );


          }
          );

        },
        itemCount: productList.length

      );
    }
  }
