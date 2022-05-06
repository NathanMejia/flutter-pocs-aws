import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'views/view_1.dart';
import 'views/view_2.dart';
import 'views/view_3.dart';

class InitMenu extends StatelessWidget {
  const InitMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 1.w, vertical: 3.h),
        alignment: Alignment.topCenter,
        // width: 400,
        child: Wrap(
          runSpacing: 2.h,
          spacing: 2.w,
          direction: Axis.horizontal,
          children :  [
            GestureDetector(
              onTap: () => 
                Navigator.pushReplacement(context, 
                MaterialPageRoute(builder: (_) =>  const View1() )
              ),
              child: const RedCube(displayText: "1")
            ),

            GestureDetector(
              onTap: () => 
                Navigator.pushReplacement(context, 
                MaterialPageRoute(builder: (_) =>  const View2() )
              ),
              child: const RedCube(displayText: "2")
            ),


            GestureDetector(
              onTap: () => 
                Navigator.pushReplacement(context, 
                MaterialPageRoute(builder: (_) =>  const View3() )
              ),
              child: const RedCube(displayText: "3")
            ),



          ]
        ),
      ),
    );
  }
}

class RedCube extends StatelessWidget {
  const RedCube({
    Key? key,
    required this.displayText
    }) : super(key: key);

  final String displayText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.red
      ),
      child: Center(
        child: Text(
          displayText, 
          style: const TextStyle(
            fontSize: 24,
            color: Colors.white
          ),

        )
      ) ,
    );
  }
}