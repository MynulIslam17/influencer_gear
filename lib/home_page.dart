
 import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
 import 'package:flutter_screenutil/flutter_screenutil.dart';
 import 'package:flutter_svg/flutter_svg.dart';
import 'package:influencer_gear_project/responsive_device/home_layouts/big_sreen.dart';
import 'package:influencer_gear_project/responsive_device/responsive_design.dart';
import 'package:influencer_gear_project/responsive_device/home_layouts/small_screen.dart';
import 'package:influencer_gear_project/widget/brands_name.dart';
import 'package:influencer_gear_project/widget/custome_btn.dart';
import 'package:influencer_gear_project/widget/footer_design.dart';
import 'package:influencer_gear_project/widget/product_card.dart';
import 'package:influencer_gear_project/widget/top_banner_image.dart';
import 'package:influencer_gear_project/widget/banner_content.dart';

class HomePage extends StatelessWidget {
   const HomePage({super.key});


   @override
   Widget build(BuildContext context) {
   // gets the size of screen
     final Size screenSize= MediaQuery.of(context).size;
     final width=screenSize.width;
     final height=screenSize.height;

      return Scaffold(

        body:ResponsiveDesign(
            smallScreen: SmallScreen(),
            bigScreen: BigScreen()
        ),
      );


   }
 }
