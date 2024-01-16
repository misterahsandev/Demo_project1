import 'package:demo_project1/Utils/customgreencolor.dart';
import 'package:demo_project1/widgets/Customtextfield.dart';
import 'package:demo_project1/widgets/customsyellowstars.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class Bag_screenPage extends StatelessWidget {
  Bag_screenPage({Key? key}) : super(key: key);

  final logic = Get.put(Bag_screenLogic());
  final state = Get.find<Bag_screenLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      /// bottom navigationbar
      bottomNavigationBar: BottomAppBar(
        height: 55,
        child: Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              /// home icon ///
              Column(
                children: [
                  Icon(Icons.home_filled,color: Colors.grey),
                  Text('Home',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 13),)
                ],
              ),
              /// favourite icon ///
              Column(
                children: [
                  Icon(Icons.favorite,color: Colors.grey),
                  Text('Favourite',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 13),)
                ],
              ),
              /// notification icon ///
              Column(
                children: [
                  Icon(Icons.notifications,color: Colors.grey),
                  Text('Notification',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 13),)
                ],
              ),
              /// profile icon ///
              Column(
                children: [
                  Icon(Icons.person_rounded,color: Colors.grey),
                  Text('Profile',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 13),)
                ],
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Customgreencolor,
        elevation: 0,
        leading: InkWell(
            onTap: Get.back,
            child: Icon(Icons.arrow_back)),
        centerTitle: true,
        title: Text('Bags'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Icon(Icons.local_grocery_store),
          ),
        ],
      ),
      body: Column(
        children: [
          customtextfield(),
          Padding(
            padding:  EdgeInsets.only(top: 30,left: 25),
            child: Column(
              children: [
                Row(
                  children: [
                    ///  yellow bag container ///
                    Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: Container(
                        height: 194,
                        width: 140,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 2,
                                spreadRadius: 0,
                                offset: Offset(0,2),
                                color: Colors.grey
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset('assets/yellowbag.png'),
                            Padding(
                              padding: const EdgeInsets.only(left: 10,bottom: 3,top: 3),
                              child: Text('Hand bag',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
                            ),
                            customyellowstars(),
                            Padding(
                              padding: const EdgeInsets.only(left: 10,top: 1),
                              child: Row(
                                children: [
                                  Text('Rs.150.00',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 30),
                                    child: Icon(Icons.add_circle_outlined,color: Colors.red,),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    ///  brown purse conatiner ///
                    Container(
                      height: 194,
                      width: 140,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 2,
                              spreadRadius: 0,
                              offset: Offset(0,2),
                              color: Colors.grey
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                              height: 128,
                              child: Image.asset('assets/brownpurse.png')),
                          Padding(
                            padding: const EdgeInsets.only(left: 10,bottom: 3,top: 3),
                            child: Text('Hand Bag',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
                          ),
                          customyellowstars(),
                          Padding(
                            padding: const EdgeInsets.only(left: 10,top: 1),
                            child: Row(
                              children: [
                                Text('Rs.1300.00',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
                                Padding(
                                  padding: const EdgeInsets.only(left: 25),
                                  child: Icon(Icons.add_circle_outlined,color: Colors.red,),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Row(
                    children: [
                      /// red purse conatiner ///
                      Container(
                        height: 194,
                        width: 140,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 2,
                                spreadRadius: 0,
                                offset: Offset(0,2),
                                color: Colors.grey
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset('assets/redbag.png'),
                            Padding(
                              padding: const EdgeInsets.only(left: 10,bottom: 3,top: 3),
                              child: Text('Hand Bag',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
                            ),
                            customyellowstars(),
                            Padding(
                              padding: const EdgeInsets.only(left: 10,top: 1),
                              child: Row(
                                children: [
                                  Text('Rs.750.00',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 30),
                                    child: Icon(Icons.add_circle_outlined,color: Colors.red,),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      /// bag container ///
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Container(
                          height: 194,
                          width: 140,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 2,
                                  spreadRadius: 0,
                                  offset: Offset(0,2),
                                  color: Colors.grey
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset('assets/baggrey.png'),
                              Padding(
                                padding: const EdgeInsets.only(left: 10,bottom: 3,top: 3),
                                child: Text('Bags',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
                              ),
                              customyellowstars(),
                              Padding(
                                padding: const EdgeInsets.only(left: 10,top: 1),
                                child: Row(
                                  children: [
                                    Text('Rs.450.00',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 30),
                                      child: Icon(Icons.add_circle_outlined,color: Colors.red,),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
