import 'package:demo_project1/module/home_page/view.dart';
import 'package:get/get.dart';

import 'state.dart';

class Verify_phonenumberLogic extends GetxController {
  final Verify_phonenumberState state = Verify_phonenumberState();
  navigationMethod(){
    Get.to(Home_pagePage());
  }
}
