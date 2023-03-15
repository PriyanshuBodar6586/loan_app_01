import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';
import 'package:loan_app_01/view/intro.dart';
import 'package:sizer/sizer.dart';

class Splash_screen extends StatefulWidget {
  const Splash_screen({Key? key}) : super(key: key);

  @override
  State<Splash_screen> createState() => _Splash_screenState();
}

class _Splash_screenState extends State<Splash_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Align(
        alignment: Alignment.bottomCenter,
        child: InkWell(
          onTap: (){
            Get.off(Intro());
          },
          child: Container(
            height: 10.h,
            width: 95.w,
            child: Center(child: Text("Start", style: TextStyle(color: Colors.white,fontSize: 20.sp))),
            decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    offset: Offset(4, 4),
                    blurRadius: 15,
                    spreadRadius: 5,
                  ),
                  BoxShadow(
                      color: Colors.grey.shade700,
                      offset: Offset(-4, -4),
                      blurRadius: 15,
                      spreadRadius: 1),
                ]),
          ),
        ),
      ),
    );
  }
}
