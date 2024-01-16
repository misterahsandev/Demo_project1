import 'package:demo_project1/Utils/customgreencolor.dart';
import 'package:demo_project1/Utils/customsignuppage.dart';
import 'package:demo_project1/Utils/utils.dart';
import 'package:demo_project1/module/login_withphonenumber/view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class Login_pagePage extends StatefulWidget {
  Login_pagePage({Key? key}) : super(key: key);

  @override
  State<Login_pagePage> createState() => _Login_pagePageState();
}

class _Login_pagePageState extends State<Login_pagePage> {
  final logic = Get.put(Login_pageLogic());

  final state = Get
      .find<Login_pageLogic>()
      .state;
   bool loading = false;
  final _formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();

  final passwordController = TextEditingController();

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
    return GetBuilder<Login_pageLogic>(builder: (login_pagelogic)
    => Scaffold(
         body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Text('Login',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.w800,),)),
            Form(
              key: _formKey, child: Column(
              children: [
                Padding(
                  padding:  EdgeInsets.only(top: 20,bottom: 0),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: SizedBox(
                      height: 80,
                      width: 330,
                      child: TextFormField(
                        controller: emailController,
                        cursorColor: Colors.grey,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 20),
                          filled: true,
                          hintText: 'Email',
                          hintStyle: TextStyle(color: Colors.grey,
                              fontWeight: FontWeight.w400,
                              fontSize: 17),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(60),
                              borderSide: BorderSide(color: Colors.grey)
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(color: Colors.grey)
                          ),
                          errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(color: Colors.red,)
                          ),
                        ),
                        validator: (value){
                          if (value!.isEmpty){
                            return " Please enter your password";
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                ),
                /// password ///
                SizedBox(
                  height: 80,
                  width: 330,
                  child: TextFormField(
                    controller: passwordController,
                    obscureText: true,
                    cursorColor: Colors.grey,
                    decoration: InputDecoration(
                      filled: true,
                      // focusedErrorBorder: InputBorder.none,
                      contentPadding: EdgeInsets.only(left: 20),
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Colors.grey,
                          fontWeight: FontWeight.w400,
                          fontSize: 17),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Colors.grey)
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Colors.grey)
                      ),
                      errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(60),
                          borderSide: BorderSide(color: Colors.red)
                      ),
                    ),
                    validator:
                        (value){
                      if (value!.isEmpty){
                        return " Please enter your password";
                      }
                      return null;
                    },
                  ),
                ),
              ],
            ),
            ),

            Padding(
              padding: EdgeInsets.only(top: 50, bottom: 20),
              child: InkWell(
                onTap: (){if(_formKey.currentState!.validate()){
                  setState(() {
                    loading = true;
                  });
                  _auth.signInWithEmailAndPassword(
                      email: emailController.text.toString(),
                      password: passwordController.text.toString()).then((value){
                        Utils().toastMessage(value.user!.email.toString());
                        login_pagelogic.navigationMethodfirebase();
                        setState(() {
                          loading = false;
                        });
                  }).onError((error, stackTrace){
                    debugPrint(error.toString());
                        Utils().toastMessage(error.toString());
                        setState(() {
                          loading = false;
                        });
                  });
                };
                },
                child: CustomSignup(title: 'Login',loading: loading,)
                ),
              ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('New User?',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),),
                InkWell(
                  onTap: login_pagelogic.navigationMethod,
                  child: Text('SignUp', style: TextStyle(fontSize: 15,
                      color: Color(0xff409F7F),
                      fontWeight: FontWeight.w600),),
                )
              ],
            ),
            Padding(
              padding:  EdgeInsets.only(top: 70),
              child: InkWell(
                onTap: (){
                  login_pagelogic.navigationMethodloginwithphone();
                },
                  child: Container(
                    height: 50,
                    width: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Customgreencolor,
                    ),
                    child: Center(child: Text('Login with phone number',style: TextStyle(color: Colors.white,fontSize: 17),)),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
