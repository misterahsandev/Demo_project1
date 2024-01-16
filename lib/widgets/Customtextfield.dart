import 'package:demo_project1/Utils/customgreencolor.dart';
import 'package:flutter/material.dart';

class customtextfield extends StatefulWidget {
  const customtextfield({super.key});

  @override
  State<customtextfield> createState() => _customtextfieldState();
}

class _customtextfieldState extends State<customtextfield> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 360,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
        color: Customgreencolor,
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 20,left: 20,right: 20),
        child: TextFormField(
          cursorColor: Colors.black,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(top: 17),
            hintText: 'Search',
            hintStyle: TextStyle(color: Colors.grey),
            prefixIcon: Icon(Icons.search,color: Colors.black,),
            suffixIcon: Icon(Icons.mic,color: Colors.black,),

            filled: true,
            fillColor: Colors.white,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(9),
              borderSide: BorderSide(color: Colors.white),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(9),
              borderSide: BorderSide(color: Colors.white),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(9),
              borderSide: BorderSide(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
