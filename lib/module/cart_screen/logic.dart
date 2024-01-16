import 'package:demo_project1/module/payment_method/view.dart';
import 'package:get/get.dart';

import 'state.dart';

class Cart_screenLogic extends GetxController {
  final Cart_screenState state = Cart_screenState();
  navigationMethod(){
    Get.to(Payment_methodPage());
  }
}
