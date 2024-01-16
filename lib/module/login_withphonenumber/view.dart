import 'package:demo_project1/Utils/customgreencolor.dart';
import 'package:demo_project1/Utils/customsignuppage.dart';
import 'package:demo_project1/Utils/utils.dart';
import 'package:demo_project1/module/verify_phonenumber/view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class Login_withphonenumberPage extends StatefulWidget {
  Login_withphonenumberPage({Key? key}) : super(key: key);

  @override
  State<Login_withphonenumberPage> createState() => _Login_withphonenumberPageState();
}

class _Login_withphonenumberPageState extends State<Login_withphonenumberPage> {
  final logic = Get.put(Login_withphonenumberLogic());
  final state = Get
      .find<Login_withphonenumberLogic>()
      .state;
  bool loading = false;
  final phonenumbercontroller = TextEditingController();
  final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Login_withphonenumberLogic>(builder: (login_withphonenumberlogic)
      => Scaffold(
        appBar: AppBar(
          backgroundColor: Customgreencolor,
          centerTitle: true,
          title: Text('Login with Phone number'),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40,left: 20,bottom: 40),
                child: SizedBox(
                  width: 310,
                  child: TextFormField(
                    keyboardType: TextInputType.phone,
                    cursorColor: Colors.grey,
                    controller: phonenumbercontroller,
                    decoration: InputDecoration(
                      hintText: 'Enter your phone number',
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.black12)
                      )

                    ),

                  ),
                ),
              ),
              InkWell(
                  onTap: (){
                    auth.verifyPhoneNumber(
                        phoneNumber: phonenumbercontroller.text.toString(),
                        verificationCompleted: (_){
                          setState(() {
                            loading = true;
                          });
                        },
                        verificationFailed: (e){
                          Utils().toastMessage(e.toString());
                          setState(() {
                            loading = false;
                          });
                        }, codeSent: (String verificationId, int? token){
                         Navigator.push(context, MaterialPageRoute(builder: (context)=> Verify_phonenumberPage(verificationId: verificationId)));
                          setState(() {
                            loading = false;
                          });
                    },
                        codeAutoRetrievalTimeout: (e){
                      Utils().toastMessage(e.toString());
                      setState(() {
                        loading = false;
                      });
                    });
                  },
                  child: CustomSignup(title: 'Verify Phone number',loading: loading,)),
            ],
          ),
        ),
      ),
    );
  }
}
