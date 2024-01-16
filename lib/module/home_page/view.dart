import 'package:demo_project1/Utils/customgreencolor.dart';
import 'package:demo_project1/Utils/utils.dart';
import 'package:demo_project1/widgets/Customtextfield.dart';
import 'package:demo_project1/widgets/customsyellowstars.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'logic.dart';

class Home_pagePage extends StatelessWidget {
  Home_pagePage({Key? key}) : super(key: key);

  final logic = Get.put(Home_pageLogic());
  final state = Get
      .find<Home_pageLogic>()
      .state;

  final auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<Home_pageLogic>(builder: (home_pagelogic) =>
       Scaffold(
         resizeToAvoidBottomInset: false,
         backgroundColor: Colors.white,
         drawer: SafeArea(
           /// drawer ///
           child: Drawer(
             width: 270,
             child: Column(
               children: [
                 Padding(
                   padding: const EdgeInsets.only(top: 50,bottom: 20),
                   child: Row(
                     children: [
                       Padding(
                         padding: const EdgeInsets.only(left: 20,right: 25),
                         child: SvgPicture.asset('assets/🦆 icon _dashboard_.svg'),
                       ),
                       Text('Dashboard',style: TextStyle(fontSize: 18,fontWeight:FontWeight.w500),)
                     ],
                   ),
                 ),Row(
                   children: [
                     Padding(
                       padding: const EdgeInsets.only(left: 20,right: 25),
                       child: SvgPicture.asset('assets/🦆 icon _ordered list_.svg'),
                     ),
                     Text('Orders',style: TextStyle(fontSize: 18,fontWeight:FontWeight.w500),)
                   ],
                 ),Padding(
                   padding: const EdgeInsets.only(top: 20,bottom: 20),
                   child: Row(
                     children: [
                       Padding(
                         padding: const EdgeInsets.only(left: 20,right: 25),
                         child: SvgPicture.asset('assets/🦆 icon _wallet_.svg'),
                       ),
                       Text('Your Wallet',style: TextStyle(fontSize: 18,fontWeight:FontWeight.w500),)
                     ],
                   ),
                 ),Row(
                   children: [
                     Padding(
                       padding: const EdgeInsets.only(left: 20,right: 25),
                       child: SvgPicture.asset('assets/Vector.svg'),
                     ),
                     Text('Voucher',style: TextStyle(fontSize: 18,fontWeight:FontWeight.w500),)
                   ],
                 ),Padding(
                   padding: const EdgeInsets.only(top: 20,bottom: 20),
                   child: Row(
                     children: [
                       Padding(
                         padding: const EdgeInsets.only(left: 20,right: 25),
                         child: SvgPicture.asset('assets/🦆 icon _payments_.svg'),
                       ),
                       Text('Payment',style: TextStyle(fontSize: 18,fontWeight:FontWeight.w500),)
                     ],
                   ),
                 ),
                 Divider(color: Colors.black,),
                 Padding(
                   padding: const EdgeInsets.only(top: 25,bottom: 20),
                   child: Row(
                     children: [
                       Padding(
                         padding: const EdgeInsets.only(left: 20,right: 25),
                         child: SvgPicture.asset('assets/🦆 icon _help circle_.svg'),
                       ),
                       Text('Help Centre',style: TextStyle(fontSize: 18,fontWeight:FontWeight.w500),)
                     ],
                   ),
                 ),Row(
                   children: [
                     Padding(
                       padding: const EdgeInsets.only(left: 20,right: 25),
                       child: SvgPicture.asset('assets/Vector (1).svg'),
                     ),
                     Text('Privacy Policy',style: TextStyle(fontSize: 18,fontWeight:FontWeight.w500),)
                   ],
                 ),Padding(
                   padding: const EdgeInsets.only(top: 20,bottom: 20),
                   child: Row(
                     children: [
                       Padding(
                         padding: const EdgeInsets.only(left: 20,right: 25),
                         child: SvgPicture.asset('assets/Group 4.svg'),
                       ),
                       Text('Terms and Condition',style: TextStyle(fontSize: 18,fontWeight:FontWeight.w500),)
                     ],
                   ),
                 ),Row(
                   children: [
                     Padding(
                       padding: const EdgeInsets.only(left: 20,right: 25),
                       child: SvgPicture.asset('assets/🦆 icon _settings account more_.svg'),
                     ),
                     Text('Setting',style: TextStyle(fontSize: 18,fontWeight:FontWeight.w500),)
                   ],
                 ),
                 Padding(
                   padding: const EdgeInsets.only(top: 20,bottom: 40),
                   child: Divider(color: Colors.black,),
                 ),
                 InkWell(
                   onTap: (){
                     auth.signOut().then((value) {
                       home_pagelogic.navigationMethodlogout();
                     }).onError((error, stackTrace){
                       Utils().toastMessage(error.toString());
                     });
                   },
                   child: Row(
                     children: [
                       Padding(
                         padding: const EdgeInsets.only(left: 20,right: 25),
                         child: SvgPicture.asset('assets/🦆 icon _log out outline_.svg'),
                       ),
                       Text('Logout',style: TextStyle(fontSize: 18,fontWeight:FontWeight.w500),)
                     ],
                   ),
                 ),
               ],
             ),
           ),
         ),
         /// bottom navigationbar
         bottomNavigationBar: BottomAppBar(
           height: 45,
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: [
               /// home icon ///
               Column(
                 children: [
                   Icon(Icons.home_filled,color: Customgreencolor),
                   Text('Home',style: TextStyle(color: Customgreencolor,fontWeight: FontWeight.w400,fontSize: 13),)
                 ],
               ),
               /// favourite icon ///
               Column(
                 children: [
                   Icon(Icons.favorite,color: Colors.grey),
                   Text('Favourite',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 13,color: Colors.grey,),)
                 ],
               ),
               /// notification icon ///
               Column(
                 children: [
                   Icon(Icons.notifications,color: Colors.grey),
                   Text('Notification',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 13,color: Colors.grey,),)
                 ],
               ),
               /// profile icon ///
               InkWell(
                 onTap: home_pagelogic.navigationMethodprofile,
                 child: Column(
                   children: [
                     Icon(Icons.person_rounded,color: Colors.grey),
                     Text('Profile',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 13,color: Colors.grey,),)
                   ],
                 ),
               ),
             ],
           ),
         ),
         /// appbar //
         appBar: AppBar(
           backgroundColor: Customgreencolor,
            elevation: 0,
            centerTitle: true,
            title: Text('Home'),
           actions: [
             Padding(
               padding: const EdgeInsets.only(right: 15),
               child: InkWell(
                   onTap: home_pagelogic.navigationMethodcart,
                   child: Icon(Icons.local_grocery_store)),
             ),
           ],
         ),
          body: SingleChildScrollView(
           scrollDirection: Axis.vertical,
           child: Column(
             mainAxisAlignment: MainAxisAlignment.start,
             children: [
               /// textform field ///
                    customtextfield(),
               /// circle images, cloth,shoes,bag,watch ///
               Padding(
                 padding: const EdgeInsets.only(top: 8,left: 30,bottom: 8),
                 child: Row(
                   children: [
                     /// cloth ///
                     InkWell(
                       onTap: home_pagelogic.navigationMethod,
                       child: Column(
                         children: [
                           SizedBox(
                             height: 50,
                               width: 50,
                               child: Image.asset('assets/shirt.png')),
                           Padding(
                             padding: const EdgeInsets.only(top: 7),
                             child: Text('Clothes',style: TextStyle(fontWeight: FontWeight.w500),),
                           )
                         ],
                       ),
                     ),
                     /// shoes ///
                     Padding(
                       padding: const EdgeInsets.only(left: 30,right: 30),
                       child: InkWell(
                         onTap: home_pagelogic.navigationMethodshoes,
                         child: Column(
                           children: [
                             SizedBox(
                               height: 50,
                                 width: 50,
                                 child: Image.asset('assets/shoes.png')),
                             Padding(
                               padding: const EdgeInsets.only(top: 7),
                               child: Text('Shoes',style: TextStyle(fontWeight: FontWeight.w500),),
                             )
                           ],
                         ),
                       ),
                     ),
                     /// watch ///
                     InkWell(
                       onTap: home_pagelogic.navigationMethodwatch,
                       child: Column(
                         children: [
                           SizedBox(
                             height: 50,
                               width: 50,
                               child: Image.asset('assets/watch.png')),
                           Padding(
                             padding: const EdgeInsets.only(top: 7),
                             child: Text('Watches',style: TextStyle(fontWeight: FontWeight.w500),),
                           )
                         ],
                       ),
                     ),
                     /// bag ///
                     Padding(
                       padding: const EdgeInsets.only(left: 30),
                       child: InkWell(
                         onTap: home_pagelogic.navigationMethodbag,
                         child: Column(
                           children: [
                             SizedBox(
                               height: 50,
                                 width: 50,
                                 child: Image.asset('assets/bag.png')),
                             Padding(
                               padding: const EdgeInsets.only(top: 7),
                               child: Text('Bags',style: TextStyle(fontWeight: FontWeight.w500),),
                             )
                           ],
                         ),
                       ),
                     ),
                   ],
                 ),
               ),
               /// tranding now  button ///
               Container(
                 height: 45,
                 width: 380,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(5),
                   color: Customgreencolor,
                 ),
                 child: Padding(
                   padding: const EdgeInsets.only(top: 10,left: 20),
                   child: Text('Trending Now',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 20),),
                 ),
               ),
               Padding(
                 padding:  EdgeInsets.only(top: 10,left: 25),
                 child: Column(
                   children: [
                     Row(
                       children: [
                         /// watches container ///
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
                                 Image.asset('assets/3725815 1.png'),
                                 Padding(
                                   padding: const EdgeInsets.only(left: 10,bottom: 3,top: 3),
                                   child: Text('Smart Watch',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
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
                         ///  clothes conatiner ///
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
                                   child: Image.asset('assets/manshirt.png')),
                               Padding(
                                 padding: const EdgeInsets.only(left: 10,bottom: 3,top: 3),
                                 child: Text('Clothes',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
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
                       padding: const EdgeInsets.only(top: 15),
                       child: Row(
                         children: [
                           /// shoes conatiner ///
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
                                 Image.asset('assets/redshoe.png'),
                                 Padding(
                                   padding: const EdgeInsets.only(left: 10,bottom: 3,top: 3),
                                   child: Text('Shoes',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
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
         ),
       ),
    );
    }
}
