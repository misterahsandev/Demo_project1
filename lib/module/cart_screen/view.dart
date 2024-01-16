
import 'package:demo_project1/Utils/customgreencolor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class Cart_screenPage extends StatelessWidget {
  Cart_screenPage({Key? key}) : super(key: key);

  final logic = Get.put(Cart_screenLogic());
  final state = Get
      .find<Cart_screenLogic>()
      .state;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Cart_screenLogic>(builder: (cart_screenlogic)
      => Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Customgreencolor,
          elevation: 0,
          leading: InkWell(
              onTap: Get.back,
              child: const Icon(Icons.arrow_back,)),
          centerTitle: true,
          title: const Text('Cart', style: TextStyle(fontSize: 25),),
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
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
                padding: const EdgeInsets.only(top: 30, left: 20, bottom: 15),
                child: Row(
                  children: [
                    SizedBox(
                        height: 110,
                        child: Image.asset('assets/3725815 1 (1).png')),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Smart watch', style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),),
                          Padding(
                            padding: const EdgeInsets.only(top: 7, bottom: 14),
                            child: Text('Rs.150.00', style: TextStyle(
                                color: Customgreencolor, fontSize: 17),),
                          ),
                          const Row(
                            children: [
                              Icon(Icons.add_circle_outline_rounded,
                                color: Colors.black,),
                              Padding(
                                padding: EdgeInsets.only(left: 5, right: 5),
                                child: Text('1', style: TextStyle(fontSize: 20,
                                    fontWeight: FontWeight.w400),),
                              ),
                              Icon(Icons.remove_circle_outline,
                                color: Colors.black,),
                              Padding(
                                padding: EdgeInsets.only(left: 90),
                                child: Icon(
                                  Icons.delete_outline, color: Colors.black,),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              /// bag ///
              const Divider(
                color: Colors.grey,
                thickness: 2,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 20, bottom: 15),
                child: Row(
                  children: [
                    SizedBox(
                        height: 110,
                        child: Image.asset('assets/Rectangle 31.png')),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Hand bag', style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),),
                          Padding(
                            padding: const EdgeInsets.only(top: 7, bottom: 14),
                            child: Text('Rs.1150.00', style: TextStyle(
                                color: Customgreencolor, fontSize: 17),),
                          ),
                          const Row(
                            children: [
                              Icon(Icons.add_circle_outline_rounded,
                                color: Colors.black,),
                              Padding(
                                padding: EdgeInsets.only(left: 5, right: 5),
                                child: Text('1', style: TextStyle(fontSize: 20,
                                    fontWeight: FontWeight.w400),),
                              ),
                              Icon(Icons.remove_circle_outline,
                                color: Colors.black,),
                              Padding(
                                padding: EdgeInsets.only(left: 90),
                                child: Icon(
                                  Icons.delete_outline, color: Colors.black,),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(
                color: Colors.grey,
                thickness: 2,
              ),

              /// shoe ///
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 20, bottom: 15),
                child: Row(
                  children: [
                    SizedBox(
                        height: 110,
                        child: Image.asset(
                            'assets/revolt-164_6wVEHfI-unsplash 1.png')),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Nike Shoe', style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),),
                          Padding(
                            padding: const EdgeInsets.only(top: 7, bottom: 14),
                            child: Text('Rs.550.00', style: TextStyle(
                                color: Customgreencolor, fontSize: 17),),
                          ),
                          const Row(
                            children: [
                              Icon(Icons.add_circle_outline_rounded,
                                color: Colors.black,),
                              Padding(
                                padding: EdgeInsets.only(left: 5, right: 5),
                                child: Text('1', style: TextStyle(fontSize: 20,
                                    fontWeight: FontWeight.w400),),
                              ),
                              Icon(Icons.remove_circle_outline,
                                color: Colors.black,),
                              Padding(
                                padding: EdgeInsets.only(left: 90),
                                child: Icon(
                                  Icons.delete_outline, color: Colors.black,),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(
                color: Colors.grey,
                thickness: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 0, right: 180, top: 10),
                    child: Text('Total:', style: TextStyle(
                        fontWeight: FontWeight.w600, fontSize: 20),),
                  ),
                  Text('Rs:1550',
                    style: TextStyle(color: Customgreencolor, fontSize: 20),),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: InkWell(
                  onTap: cart_screenlogic.navigationMethod,
                  child: Container(
                    height: 50,
                    width: 260,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color(0xff409F7F),
                    ),
                    child: const Center(
                      child: Text('Checkout', style: TextStyle(fontSize: 21,
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
