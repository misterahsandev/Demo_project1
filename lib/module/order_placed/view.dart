
import 'package:demo_project1/Utils/customgreencolor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class Order_placedPage extends StatelessWidget {
  Order_placedPage({Key? key}) : super(key: key);

  final logic = Get.put(Order_placedLogic());
  final state = Get
      .find<Order_placedLogic>()
      .state;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Order_placedLogic>(builder: (order_placedlogic)
      => Scaffold(
        backgroundColor: Customgreencolor,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Order Placed Succesfully',
                style: TextStyle(color: Colors.white, fontWeight:
                FontWeight.w600, fontSize: 25),),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 20),
                child: Image.asset(
                    'assets/🦆 illustration _order confirmed_.png'),
              ),
              Text('Your order will be delivered soon.',
                style: TextStyle(color: Colors.white, fontWeight:
                FontWeight.w400, fontSize: 18),),
              Text('Thank you for choosing us ',
                style: TextStyle(color: Colors.white, fontWeight:
                FontWeight.w400, fontSize: 18),),
              Padding(
                padding: const EdgeInsets.only(top: 170,),
                child: InkWell(
                  onTap: order_placedlogic.navigationMethod,
                  child: Container(
                    height: 50,
                    width: 280,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color(0xff409F7F),
                        boxShadow: [
                          BoxShadow(
                              spreadRadius: 2,
                              color: Colors.white
                          )
                        ]
                    ),
                    child: Center(
                      child: Text(
                        'Back to Homepage', style: TextStyle(fontSize: 21,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
