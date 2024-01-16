

import 'package:demo_project1/module/home_page/view.dart';
import 'package:demo_project1/module/login_page/view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import 'state.dart';

class Splash__screenLogic extends GetxController {

  final Splash__screenState state = Splash__screenState();

  void isLogin(){
    final auth = FirebaseAuth.instance;
    final user = auth.currentUser;
    if (user!=null){
      {
        Future.delayed(Duration(seconds: 3))
            .whenComplete(() => Get.to(Home_pagePage()));
      }
    } else{
      {
        Future.delayed(Duration(seconds: 3))
            .whenComplete(() => Get.to(Login_pagePage())
        );
      }
    }
  }
}