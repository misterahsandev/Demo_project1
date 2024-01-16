
import 'package:demo_project1/module/home_page/view.dart';
import 'package:demo_project1/module/login_withphonenumber/view.dart';
import 'package:demo_project1/module/signup_page/view.dart';
import 'package:get/get.dart';

import 'state.dart';

class Login_pageLogic extends GetxController {
  final Login_pageState state = Login_pageState();
  navigationMethod(){
    Get.to(Signup_pagePage());
  }
  navigationMethodfirebase(){
    Get.to(Home_pagePage());
  }
  navigationMethodloginwithphone(){
    Get.to(Login_withphonenumberPage());
  }
}
