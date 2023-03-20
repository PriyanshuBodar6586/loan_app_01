import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loan_app_01/view/funds%20guid/Benifit.dart';
import 'package:loan_app_01/view/funds%20guid/elss.dart';
import 'package:loan_app_01/view/funds%20guid/fund_sip.dart';
import 'package:loan_app_01/view/funds%20guid/growth.dart';
import 'package:loan_app_01/view/funds%20guid/lumpsum.dart';
import 'package:loan_app_01/view/funds%20guid/sip.dart';
import 'package:loan_app_01/view/funds%20guid/stp.dart';
import 'package:loan_app_01/view/funds%20guid/tips.dart';
import 'package:loan_app_01/view/funds%20guid/type.dart';
import 'package:loan_app_01/view/funds%20guid/what.dart';
import 'package:loan_app_01/view/funds%20guid/what01.dart';
import 'package:sizer/sizer.dart';

class Fund extends StatefulWidget {
  const Fund({Key? key}) : super(key: key);

  @override
  State<Fund> createState() => _FundState();
}

class _FundState extends State<Fund> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        elevation: 00,
        backgroundColor: Colors.black,
        title: Text("Funds",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20.sp)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          height: 100.h,
          width: 100.h,
          decoration: BoxDecoration(
          color: Colors.black,
            boxShadow: [
              BoxShadow(
                  color: Colors.white,
                  offset: Offset(0, 0),
                  blurRadius: 20,
                  blurStyle: BlurStyle.outer
                //spreadRadius: 2,
              ),

            ],
          ),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SizedBox(
                  height: 1.h,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    elevation: 30,
                    child: Container(
                      height: 25.h,
                      width: 100.w,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: (){
                      Get.to(What_is());
                    },
                    child: Container(
                      height: 8.h,
                      width: 100.w,
                      decoration: BoxDecoration(
                          color: Colors.white10,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.white,
                                offset: Offset(1, 0),
                                blurRadius: 6,
                                blurStyle: BlurStyle.outer
                              //spreadRadius: 2,
                            ),
                          ],

                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("What is Mutual fund?",style: TextStyle(color: Colors.white)),
                            Icon(Icons.arrow_forward_ios,color: Colors.white),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Selecte((){ Get.to(Sip());},"What is sip?"),
                Selecte((){ Get.to(Fund_sip());},"Matual fund vs sip"),
                Selecte((){ Get.to(Benifit());},"Benefits of investing in SIP"),
                Selecte((){ Get.to(Types());},"Type of mutual fund"),
                Selecte((){ Get.to(Elss());},"ELSS (Tax Saver)"),
                Selecte((){ Get.to(Tips());},"Tips to choose fund"),
                Selecte((){ Get.to(What());},"What is NAV?"),
                Selecte((){ Get.to(Lumpsum());},"Lumpsum Vs SIP"),
                Selecte((){ Get.to(STP());},"SIP Vs STP Vs SWP"),
                Selecte((){ Get.to(Growth());},"Growth Plan Vs Divident Plan"),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    elevation: 30,
                    child: Container(
                      height: 25.h,
                      width: 100.w,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget Selecte(void Function() onTap,String text, ) {
    return   Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: (){
        },
        child: Container(
          height: 8.h,
          width: 100.w,
          decoration: BoxDecoration(
              color: Colors.white10,
              boxShadow: [
                BoxShadow(
                    color: Colors.white,
                    offset: Offset(1, 0),
                    blurRadius: 6,
                    blurStyle: BlurStyle.outer
                  //spreadRadius: 2,
                ),
              ],

              borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("$text",style: TextStyle(color: Colors.white)),
                Icon(Icons.arrow_forward_ios,color: Colors.white),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
