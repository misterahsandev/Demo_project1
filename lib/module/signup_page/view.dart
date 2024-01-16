import 'package:demo_project1/Utils/customsignuppage.dart';
import 'package:demo_project1/utils/utils.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'logic.dart';

class Signup_pagePage extends StatefulWidget {
  Signup_pagePage({Key? key}) : super(key: key);

  @override
  State<Signup_pagePage> createState() => _Signup_pagePageState();
}

class _Signup_pagePageState extends State<Signup_pagePage> {
  bool loading = false;
  final logic = Get.put(Signup_pageLogic());

  final state = Get.find<Signup_pageLogic>().state;

  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Signup_pageLogic>(builder: (signup_pagelogic) =>
        Scaffold(
          // resizeToAvoidBottomInset: false,
          body: SafeArea(
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  /// Signup text ///
                  Center(child: Padding(
                    padding: const EdgeInsets.only(bottom: 40),
                    child: Text('Signup',
                      style: TextStyle(fontSize: 28, fontWeight: FontWeight.w800,),),
                  )),
                  /// email field ///
                  SizedBox(
                    height: 80,
                    width: 330,
                    child: TextFormField(
                      controller: emailController,
                      obscureText: true,

                      cursorColor: Colors.grey,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 20),
                        hintText: 'Email',
                        filled: true,
                        hintStyle: TextStyle(color: Colors.grey,
                            fontWeight: FontWeight.w400,
                            fontSize: 17),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(color: Colors.transparent)
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(color: Colors.white)
                        ),
                        errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(color: Colors.red)
                        ),
                      ),
                      validator: (value){
                        if( value!.isEmpty){
                          return "Enter your Email";
                        }
                        return null;
                      },
                    ),
                  ),
                  /// password field ///
                  Center(
                    child: SizedBox(
                      height: 80,
                      width: 330,
                      child: TextFormField(
                        controller: passwordController,
                        obscureText: true,
                        cursorColor: Colors.grey,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 20),
                          suffixIcon: Icon(Icons.remove_red_eye),
                          focusColor: Colors.white,
                          filled: true,
                          hintText: 'Password',
                          hintStyle: TextStyle(color: Colors.grey,
                              fontWeight: FontWeight.w400,
                              fontSize: 17),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(color: Colors.transparent)
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(color: Colors.white)
                          ),
                          errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(color: Colors.red)
                          ),
                        ),
                        validator: (value){
                          if( value!.isEmpty){
                            return "Enter your password";
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                  /// reset password field ///
                  // SizedBox(
                  //   height: 80,
                  //   width: 330,
                  //   child: TextFormField(
                  //     // controller: resetpasswordcontroller,
                  //     obscureText: true,
                  //     cursorColor: Colors.grey,
                  //     decoration: InputDecoration(
                  //       suffixIcon: Icon(Icons.remove_red_eye),
                  //       contentPadding: EdgeInsets.only(left: 20),
                  //       filled: true,
                  //       hintText: 'Reset Password',
                  //       hintStyle: TextStyle(color: Colors.grey,
                  //           fontWeight: FontWeight.w400,
                  //           fontSize: 17),
                  //       enabledBorder: OutlineInputBorder(
                  //           borderRadius: BorderRadius.circular(30),
                  //           borderSide: BorderSide(color: Colors.transparent)
                  //       ),
                  //       focusedBorder: OutlineInputBorder(
                  //           borderRadius: BorderRadius.circular(30),
                  //           borderSide: BorderSide(color: Colors.white)
                  //       ),
                  //       errorBorder: OutlineInputBorder(
                  //           borderRadius: BorderRadius.circular(30),
                  //           borderSide: BorderSide(color: Colors.red)
                  //       ),
                  //     ),
                  //     validator: (value){
                  //       if( value!.isEmpty){
                  //         return "Confirm your password";
                  //       }
                  //       return null;
                  //     },
                  //   ),
                  // ),
                  /// firebase authentication ///
                  Padding(
                    padding:  EdgeInsets.only(top: 30, bottom: 20),
                    child: InkWell(
                      onTap: (){if(_formKey.currentState!.validate()){
                        setState(() {
                          loading = true;
                        });
                        _auth.createUserWithEmailAndPassword(
                            email: emailController.text.toString(),
                            password: passwordController.text.toString(),
                            ).then((value) {
                          signup_pagelogic.navigationMethodlogin();
                              setState(() {
                                loading = false;
                              });
                        }).onError((error, stackTrace){
                        Utils().toastMessage(error.toString());
                        setState(() {
                          loading = false;
                        });
                            });
                      }},
                      child: CustomSignup(
                        title: 'SignUp',
                        loading: loading,)
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Already have an Account?',
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),),
                      Text('Login', style: TextStyle(fontSize: 15,
                          color: Color(0xff409F7F),
                          fontWeight: FontWeight.w600),),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
    );
  }
}
