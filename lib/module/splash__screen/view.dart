import 'package:demo_project1/Utils/customgreencolor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class Splash__screenPage extends StatefulWidget {
  Splash__screenPage({Key? key}) : super(key: key);

  @override
  State<Splash__screenPage> createState() => _Splash__screenPageState();
}

class _Splash__screenPageState extends State<Splash__screenPage> {
  final logic = Get.put(Splash__screenLogic());

  final state = Get
      .find<Splash__screenLogic>()
      .state;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Get.find<Splash__screenLogic>().isLogin();
  }
  @override
  Widget build(BuildContext context) {
    return GetBuilder<Splash__screenLogic>(builder: (splas_screenlogic) =>
       Scaffold(
        backgroundColor: Customgreencolor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text('E-Commerce App',
                style: TextStyle(color: Colors.white, fontSize: 40,fontStyle: FontStyle.italic),),

            ),
          ],
        ),
      ),
    );
  }
}
