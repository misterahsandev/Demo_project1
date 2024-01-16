import 'package:flutter/material.dart';

class customyellowstars extends StatefulWidget {
  const customyellowstars({super.key});

  @override
  State<customyellowstars> createState() => _customyellowstarsState();
}

class _customyellowstarsState extends State<customyellowstars> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10,right: 5),
            child: Image.asset('assets/Star 1.png'),
          ),
          Image.asset('assets/Star 1.png'),
          Padding(
            padding: const EdgeInsets.only(left: 5,right: 5),
            child: Image.asset('assets/Star 1.png'),
          ),
          Image.asset('assets/Star 1.png'),
        ],
      ),
    );
  }
}
