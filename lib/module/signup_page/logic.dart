import 'package:demo_project1/module/home_page/view.dart';
import 'package:demo_project1/module/login_page/view.dart';
import 'package:get/get.dart';

import 'state.dart';

class Signup_pageLogic extends GetxController {
  final Signup_pageState state = Signup_pageState();
  navigationMethod() {
    Get.to(Home_pagePage());
  }
  navigationMethodlogin(){
    Get.to(Login_pagePage());
  }
}
