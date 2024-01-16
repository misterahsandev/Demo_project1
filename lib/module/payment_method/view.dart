
import 'package:demo_project1/Utils/customgreencolor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class Payment_methodPage extends StatelessWidget {
  Payment_methodPage({Key? key}) : super(key: key);

  final logic = Get.put(Payment_methodLogic());
  final state = Get
      .find<Payment_methodLogic>()
      .state;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Payment_methodLogic>(builder: (payment_methodlogic)
      => Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Customgreencolor,
          elevation: 0,
          leading: InkWell(
              onTap: Get.back,
              child: const Icon(Icons.arrow_back,)),
          centerTitle: true,
          title: const Text('Payment Method', style: TextStyle(fontSize: 22),),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 50,
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30)),
                  color: Customgreencolor
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 20),
              child: Text(
                "Summary", style: TextStyle(fontSize: 17, fontWeight: FontWeight
                  .w600),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50, top: 20, bottom: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Text("Total Payment", style: TextStyle(
                        fontSize: 15, fontWeight: FontWeight.w500),),
                  ),
                  Text("RS.1550", style: TextStyle(fontSize: 15,
                      fontWeight: FontWeight.w300,
                      color: Customgreencolor),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 20),
              child: Text("Select payment method",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),),
            ),
            Row(
              children: [
                Radio(value: 'Master Card',
                    groupValue: 'master card',
                    onChanged: (value) {}),
                Text("Master Card", style: TextStyle(fontSize: 15,
                    fontWeight: FontWeight.w500),),
                Padding(
                  padding: const EdgeInsets.only(left: 160),
                  child: Image.asset('assets/🦆 icon _MasterCard_.png'),
                ),
              ],
            ), Row(
              children: [
                Radio(value: 'Master Card',
                    groupValue: 'master card',
                    onChanged: (value) {}),
                Text("Visa Card", style: TextStyle(fontSize: 15,
                    fontWeight: FontWeight.w500),),
                Padding(
                  padding: const EdgeInsets.only(left: 180),
                  child: Image.asset('assets/🦆 icon _Visa_.png'),
                ),
              ],
            ), Row(
              children: [
                Radio(value: 'Master Card',
                    groupValue: 'master card',
                    onChanged: (value) {}),
                Text("Cash on delivery", style: TextStyle(fontSize: 15,
                    fontWeight: FontWeight.w500),),
                Padding(
                  padding: const EdgeInsets.only(left: 135),
                  child: Image.asset('assets/🦆 icon _MasterCard_.png'),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 200, bottom: 0, left: 50),
              child: InkWell(
                onTap:payment_methodlogic.navigationMethod,
                child: Container(
                  height: 50,
                  width: 260,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color(0xff409F7F),
                  ),
                  child: Center(
                    child: Text('Place Order', style: TextStyle(fontSize: 21,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),),
                  ),
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}
