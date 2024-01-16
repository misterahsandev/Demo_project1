import 'package:demo_project1/Utils/customgreencolor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class Profile_screenPage extends StatelessWidget {
  Profile_screenPage({Key? key}) : super(key: key);

  final logic = Get.put(Profile_screenLogic());
  final state = Get
      .find<Profile_screenLogic>()
      .state;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Profile_screenLogic>(builder: (profile_screenlogic)
      => Scaffold(
          backgroundColor: Colors.white,
          bottomNavigationBar: BottomAppBar(
            height: 45,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [

                /// home icon ///
                InkWell(
                  onTap:profile_screenlogic.navigationMethod,
                  child: Column(
                    children: [
                      Icon(Icons.home_filled, color: Colors.grey),
                      Text('Home', style: TextStyle(color: Colors.grey,
                          fontWeight: FontWeight.w400,
                          fontSize: 13),)
                    ],
                  ),
                ),

                /// favourite icon ///
                Column(
                  children: [
                    Icon(Icons.favorite, color: Colors.grey),
                    Text('Favourite', style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 13,
                        color: Colors.grey),)
                  ],
                ),

                /// notification icon ///
                Column(
                  children: [
                    Icon(Icons.notifications, color: Colors.grey),
                    Text('Notification', style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 13,
                        color: Colors.grey),)
                  ],
                ),

                /// profile icon ///
                Column(
                  children: [
                    Icon(Icons.person_rounded, color: Customgreencolor),
                    Text('Profile', style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 13,
                        color: Customgreencolor),)
                  ],
                ),
              ],
            ),
          ),
          appBar: AppBar(
            backgroundColor: Customgreencolor,
            elevation: 0,
            leading: InkWell(
                onTap: Get.back,
                child: const Icon(Icons.arrow_back,)),
            centerTitle: true,
            title: const Text('Profile', style: TextStyle(fontSize: 22),),
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
                padding: const EdgeInsets.only(top: 20, left: 20),
                child: Row(
                  children: [
                    Image.asset('assets/Ellipse 5.png'),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Jackson Graham', style: TextStyle(fontSize: 20,
                              fontWeight: FontWeight.w600),),
                          Text('jackson.graham@example.com', style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 20),
                child: Row(
                  children: [

                    /// wallet amount ///
                    Container(
                      height: 60,
                      width: 140,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              spreadRadius: 0,
                              blurRadius: 2,
                              color: Colors.grey
                          ),
                        ],
                      ),
                      child: Center(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 10, bottom: 5),
                              child: Text('Wallet Amount', style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w600),),
                            ),
                            Text('Rs.1500.00', style: TextStyle(fontSize: 13,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey),)
                          ],
                        ),
                      ),
                    ),

                    /// coins amount ///
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
                        height: 60,
                        width: 140,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                spreadRadius: 0,
                                blurRadius: 2,
                                color: Colors.grey
                            ),
                          ],
                        ),
                        child: Center(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 10, bottom: 5),
                                child: Text('Reward coins', style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600),),
                              ),
                              Text('18 coins', style: TextStyle(fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey),)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 15),
                child: SizedBox(
                  height: 50,
                  child: ListTile(
                    title: Text('My Order', style: TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w700,),),
                    subtitle: Text('20 Orders'),
                    trailing: Icon(
                      Icons.arrow_forward_ios, color: Colors.black,),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
                child: ListTile(
                  title: Text('My Reviews', style: TextStyle(
                    fontSize: 16, fontWeight: FontWeight.w700,),),
                  subtitle: Text('5 Reviews'),
                  trailing: Icon(Icons.arrow_forward_ios, color: Colors.black,),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 15),
                child: SizedBox(
                  height: 50,
                  child: ListTile(
                    title: Text('My Messages', style: TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w700,),),
                    subtitle: Text('See Personalized Messages'),
                    trailing: Icon(
                      Icons.arrow_forward_ios, color: Colors.black,),
                  ),
                ),
              ), SizedBox(
                height: 50,
                child: ListTile(
                  title: Text('My Messages', style: TextStyle(
                    fontSize: 16, fontWeight: FontWeight.w700,),),
                  subtitle: Text('See Personalized Messages'),
                  trailing: Icon(Icons.arrow_forward_ios, color: Colors.black,),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: SizedBox(
                  height: 50,
                  child: ListTile(
                    title: Text('About ', style: TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w700,),),
                    subtitle: Text('Know more about us '),
                    trailing: Icon(
                      Icons.arrow_forward_ios, color: Colors.black,),
                  ),
                ),
              ),
            ],
          )
      ),
    );
  }
}
