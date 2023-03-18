import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loan_app_01/const/constant.dart';
import 'package:loan_app_01/view/calculator/EMICalculator.dart';
import 'package:loan_app_01/view/calculator/FDCalculator.dart';
import 'package:loan_app_01/view/calculator/GSTCalculator.dart';
import 'package:loan_app_01/view/calculator/SIPCalculator.dart';
import 'package:sizer/sizer.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({Key? key}) : super(key: key);

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: appBar("Different Calculators"),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              height: 25.h,
              width: 100.w,
              color: Colors.white,
            ),
            InkWell(
              onTap: (){
                Get.to(SIPCalculator(),);
              },
              child: Container(
                height: 15.h,
                width: 100.w,
                margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), color: Colors.white10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    ClipRRect(borderRadius: BorderRadius.circular(15),child: Image.asset("assets/image/c1.png",width: 10.h,height: 10.h,)),
                    Text("SIP Calculator",style: TextStyle(color: Colors.white,fontSize: 20.sp)),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: (){
                Get.to(GstCalculator(),);
              },
              child: Container(
                height: 15.h,
                width: 100.w,
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), color: Colors.white10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    ClipRRect(borderRadius: BorderRadius.circular(15),child: Image.asset("assets/image/c2.png",width: 10.h,height: 10.h,)),
                    Text("GSt Calculator",style: TextStyle(color: Colors.white,fontSize: 20.sp)),
                  ],
                ),
              ),
            ), InkWell(
              onTap: (){
                Get.to(FDCalculator(),);
              },
              child: Container(
                height: 15.h,
                width: 100.w,
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), color: Colors.white10),
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    ClipRRect(borderRadius: BorderRadius.circular(15),child: Image.asset("assets/image/c3.png",width: 10.h,height: 10.h,)),
                    Text("FD Calculator",style: TextStyle(color: Colors.white,fontSize: 20.sp)),
                  ],
                ),
              ),
            ), InkWell(
              onTap: (){
                Get.to(EMICalculator(),);
              },
              child: Container(
                height: 15.h,
                width: 100.w,
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), color: Colors.white10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    ClipRRect(borderRadius: BorderRadius.circular(15),child: Image.asset("assets/image/c4.png",width: 10.h,height: 10.h,)),
                    Text("EMI Calculator",style: TextStyle(color: Colors.white,fontSize: 20.sp)),

                  ],
                ),
              ),
            ),
            Container(
              height: 25.h,
              width: 100.w,
              color: Colors.white,
            ),
            SizedBox(
              height: 13.h,
            ),
          ],
        ),
      ),
    );
  }
}
