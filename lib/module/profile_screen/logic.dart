import 'package:demo_project1/module/home_page/view.dart';
import 'package:get/get.dart';

import 'state.dart';

class Profile_screenLogic extends GetxController {
  final Profile_screenState state = Profile_screenState();
  navigationMethod(){
    Get.to(Home_pagePage());
  }
}
