import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loan_app_01/view/question/FinalScreen.dart';
import 'package:sizer/sizer.dart';

class Thered_question extends StatefulWidget {
  const Thered_question({Key? key}) : super(key: key);

  @override
  State<Thered_question> createState() => _Thered_questionState();
}

class _Thered_questionState extends State<Thered_question> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
                margin: const EdgeInsets.only(top: 2),
                height: 25.h,
                width: 100.w,
                color: Colors.white),
            Stepper(
              physics: const BouncingScrollPhysics(),
              currentStep: index,
              onStepCancel: () {
                if (index > 0) {
                  setState(() {
                    index--;
                  });
                }
              },
              onStepContinue: () {
                if (index <= 4) {
                  setState(() {
                    index++;
                  });
                } else {
                  Get.to(const FinalScreen());
                }
              },
              onStepTapped: (int index) {
                setState(() {
                  index = index;
                });
              },
              steps: [
                Step(
                  title: const Text("Do you have Aadhaar Card?",
                      style: TextStyle(color: Colors.white)),
                  content: confirm(20.sp),
                ),
                Step(
                  title: const Text("Do you have Pan Card?",
                      style: TextStyle(color: Colors.white)),
                  content: confirm(20.sp),
                ),
                Step(
                  title: const Text("Do you have Credit Card?",
                      style: TextStyle(color: Colors.white)),
                  content: confirm(20.sp),
                ),
                Step(
                  title: const Text("Do you have Driving License?",
                      style: TextStyle(color: Colors.white)),
                  content: confirm(20.sp),
                ),
                Step(
                  title: const Text("Do you have Passport?",
                      style: TextStyle(color: Colors.white)),
                  content: confirm(20.sp),
                ),
                Step(
                  title: const Text("Do you have Ration Card?",
                      style: TextStyle(color: Colors.white)),
                  content: confirm(20.sp),
                ),
              ],
            ),
      Container(
          margin: const EdgeInsets.only(top: 2),
          height: 25.h,
          width: 100.w,
          color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }

  confirm(double pDblWidth) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ElevatedButton(
          onPressed: () {
            if (index <= 4) {
              setState(() {
                index++;
              });
            } else {
              Get.snackbar(
                "congratulations",
                "congratulations Successfully verify your documents...",
                colorText: Colors.white,
                barBlur: 25,
                backgroundColor: const Color(0xFF2C6AB9),
                margin: const EdgeInsets.only(bottom: 50),
                animationDuration: const Duration(seconds: 2),
                overlayBlur: 15,
                snackPosition: SnackPosition.BOTTOM,
                icon: Icon(
                  Icons.add_alert,
                  color: Colors.white.withOpacity(0.9),
                ),
              );
            }
          },
          child: Text("YES", style: TextStyle(color: Colors.white)),
        ),
        SizedBox(
          width: 5.w,
        ),
        ElevatedButton(
            onPressed: () {
              Get.snackbar(
                "Alert",
                "Please press yes and go next...",
                colorText: Colors.white,
                barBlur: 25,
                backgroundColor: const Color(0xFF2C6AB9),
                margin: const EdgeInsets.only(bottom: 50),
                animationDuration: const Duration(seconds: 2),
                overlayBlur: 15,
                snackPosition: SnackPosition.BOTTOM,
                icon: Icon(
                  Icons.add_alert,
                  color: Colors.white.withOpacity(0.9),
                ),
              );
            },
            child: Text(
              "No",
              style: TextStyle(color: Colors.white),
            ))
      ],
    );
  }
}
