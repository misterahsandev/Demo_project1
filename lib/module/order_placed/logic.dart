import 'package:demo_project1/module/home_page/view.dart';
import 'package:get/get.dart';

import 'state.dart';

class Order_placedLogic extends GetxController {
  final Order_placedState state = Order_placedState();
  navigationMethod(){
    Get.to(Home_pagePage());
  }
}
