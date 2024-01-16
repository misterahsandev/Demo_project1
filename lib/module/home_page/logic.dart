import 'package:demo_project1/module/bag_screen/view.dart';
import 'package:demo_project1/module/cart_screen/view.dart';
import 'package:demo_project1/module/cloth_screen/view.dart';
import 'package:demo_project1/module/login_page/view.dart';
import 'package:demo_project1/module/profile_screen/view.dart';
import 'package:demo_project1/module/shoes_screen/view.dart';
import 'package:demo_project1/module/watches_screen/view.dart';
import 'package:get/get.dart';

import 'state.dart';

class Home_pageLogic extends GetxController {
  final Home_pageState state = Home_pageState();
  navigationMethod(){
    Get.to(Cloth_screenPage());
  }
  navigationMethodwatch(){
    Get.to(Watches_screenPage());
  }
  navigationMethodshoes(){
    Get.to(Shoes_screenPage());
  }
  navigationMethodbag(){
    Get.to(Bag_screenPage());
  }
  navigationMethodcart(){
    Get.to(Cart_screenPage());
  }
  navigationMethodlogout(){
    Get.to(Login_pagePage());
  }
  navigationMethodprofile(){
    Get.to(Profile_screenPage());
  }
}
