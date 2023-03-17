import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loan_app_01/controller/home_controller.dart';
import 'package:loan_app_01/main.dart';
import 'package:loan_app_01/view/bottombar.dart';

import 'package:sizer/sizer.dart';


class Name_screen extends StatefulWidget {
  const Name_screen({Key? key}) : super(key: key);

  @override
  State<Name_screen> createState() => _Name_screenState();
}

class _Name_screenState extends State<Name_screen> {
  HomeController controller = Get.put(HomeController());
  TextEditingController txtnickname = TextEditingController();
  var txtkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: txtkey,
      child: Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 8.h,
                ),

                SizedBox(
                  height: 2.h,
                ),
                Text(
                  "My Nickname",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    textAlignVertical: TextAlignVertical.center,
                    style: TextStyle(color: Colors.white),
                    validator: (value) {
                      return value!.length < 1
                          ? 'Name must be greater than two characters'
                          : null;
                    },
                    onChanged: (value) {
                      setState(() {
                         // controller.mStrName = value ;

                      });
                    },
                    controller: txtnickname,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      fillColor: Colors.grey,
                      filled: true,
                      label: Text(
                        "Nickname",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 2.h),
                InkWell(
                  onTap: () {
                    if (txtkey.currentState!.validate() == true) {

                      setState(() {

                    mStrName = txtnickname.text;
                      print(controller.mStrName);
                      });
                     Get.offAll(BottomNavBar());
                    }
                  },
                  child: Center(
                    child: Container(
                      height: 8.h,
                      width: 55.w,
                      decoration: BoxDecoration(
                        color: Colors.black,

                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Center(
                        child: Text("Next",
                            style: TextStyle(
                                color:Colors.white,
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w400)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
