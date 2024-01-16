import 'package:demo_project1/Utils/customsignuppage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class Verify_phonenumberPage extends StatefulWidget {
  final String verificationId;

  Verify_phonenumberPage({Key? key, required this.verificationId})
      : super(key: key);

  @override
  State<Verify_phonenumberPage> createState() => _Verify_phonenumberPageState();
}

class _Verify_phonenumberPageState extends State<Verify_phonenumberPage> {
  final logic = Get.put(Verify_phonenumberLogic());

  final state = Get
      .find<Verify_phonenumberLogic>()
      .state;

  final phonenumbercontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Verify_phonenumberLogic>(builder: (verify_phonenumberlogic)
      => Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Verify Phone number'),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 20, bottom: 40),
                child: SizedBox(
                  width: 310,
                  child: TextFormField(
                    cursorColor: Colors.grey,
                    controller: phonenumbercontroller,
                    decoration: InputDecoration(
                        hintText: '6 - digit code',
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(color: Colors.black12)
                        ),

                    ),

                  ),
                ),
              ),
              InkWell(
                  onTap: () async {
                    final credential = PhoneAuthProvider.credential(
                        verificationId: widget.verificationId,
                        smsCode: phonenumbercontroller.text.toString());
                    try {
                      var auth;
                      await auth.signInWithCredential(credential);
                      verify_phonenumberlogic.navigationMethod();
                    } catch (e) {}
                  },
                  child: CustomSignup(title: 'Verify Phone number',)),
            ],
          ),
        ),
      ),
    );
  }
}
