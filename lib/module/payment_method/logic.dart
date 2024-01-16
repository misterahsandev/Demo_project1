import 'package:demo_project1/module/order_placed/view.dart';
import 'package:get/get.dart';

import 'state.dart';

class Payment_methodLogic extends GetxController {
  final Payment_methodState state = Payment_methodState();
  navigationMethod(){
    Get.to(Order_placedPage());
  }
}
