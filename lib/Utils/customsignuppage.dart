import 'package:flutter/material.dart';

class CustomSignup extends StatelessWidget {
  final String title;
  final bool loading ;
  CustomSignup({super.key, required this.title,this.loading = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 260,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Color(0xff409F7F),
      ),
      child: Center(
        child: loading ? CircularProgressIndicator(strokeWidth: 3,color: Colors.white,) : Text(title,style: TextStyle(color: Colors.white,fontSize: 18),),
      ),
    );
  }
}
