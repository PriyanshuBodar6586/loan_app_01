import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loan_app_01/view/bottombar.dart';
import 'package:sizer/sizer.dart';

class FinalScreen extends StatefulWidget {
  const FinalScreen({Key? key}) : super(key: key);

  @override
  State<FinalScreen> createState() => _FinalScreenState();
}

class _FinalScreenState extends State<FinalScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                margin: const EdgeInsets.only(top: 22),
                height: 25.h,
                width: 100.w,
                color: Colors.white),
Image.asset("assets/image/congras.gif"),
            Container(
                margin: const EdgeInsets.only(top: 22),
                height: 15.h,
                width: 100.w,
              child: Text("Congratulation approved Your Loan",textAlign:TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 28.sp,fontWeight: FontWeight.bold,)),
                ),
            Align(
              alignment: Alignment.bottomCenter,
              child: InkWell(
                borderRadius: BorderRadius.circular(15),
                onTap: (){
                  Get.to(const BottomNavBar());
                },
                child: Container(
                  height: 8.h,
                  width: 95.w,
                  margin: const EdgeInsets.only(bottom: 10),

                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.9),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.white.withOpacity(0.7),
                            offset: Offset(0, 0),
                            blurRadius: 4,
                            blurStyle: BlurStyle.outer
                          //spreadRadius: 2,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(15)),
                  child: Center(child: Text("Submit",style: TextStyle(color: Colors.black,fontSize: 15.sp,fontWeight: FontWeight.w700,letterSpacing: 1))),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
