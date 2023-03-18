// import 'package:bubbled_navigation_bar/bubbled_navigation_bar.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
// import 'package:get/get.dart';
// import 'package:loan_app_01/controller/home_controller.dart';
// import 'package:loan_app_01/view/demo.dart';
// import 'package:loan_app_01/view/funds.dart';
// import 'package:loan_app_01/view/home_screen.dart';
// import 'package:loan_app_01/view/loans.dart';
//
// class BottomNavBar extends StatefulWidget {
//   @override
//   _BottomNavBarState createState() => _BottomNavBarState();
// }
//
// class _BottomNavBarState extends State<BottomNavBar> {
//   HomeController cnt = Get.put(HomeController());
//   GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: Obx(
//         () => BubbledNavigationBar(
//           initialIndex: cnt.select.value,
//           onTap: (value) {
//             cnt.select.value = value;
//           },
//           items: [
//             BubbledNavigationBarItem(
//               icon: Icon(Icons.add),
//               activeIcon: Icon(CupertinoIcons.home, size: 30, color: Colors.white),
//               title: Text('Home', style: TextStyle(color: Colors.white, fontSize: 12),),
//             ),
//             BubbledNavigationBarItem(
//               icon: Icon(Icons.real_estate_agent), activeIcon: Icon(CupertinoIcons.home, size: 30, color: Colors.white),
//               title: Text('Home', style: TextStyle(color: Colors.white, fontSize: 12),),
//             ),
//             BubbledNavigationBarItem(
//               icon: Icon(Icons.home), activeIcon: Icon(CupertinoIcons.home, size: 30, color: Colors.white),
//               title: Text('Home', style: TextStyle(color: Colors.white, fontSize: 12),),
//             ),
//             BubbledNavigationBarItem(
//               icon: Icon(Icons.person), activeIcon: Icon(CupertinoIcons.home, size: 30, color: Colors.white),
//               title: Text('Home', style: TextStyle(color: Colors.white, fontSize: 12),),
//             ),
//           ],
//         ),
//       ),
//       body: Obx(
//         () => IndexedStack(
//           index: cnt.select.value,
//           children: [
//             Home_Screen(),
//             Loan(),
//             Fund(),
//             Home_Screen(),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'CalculatorScreen.dart';
import 'funds.dart';
import 'home_screen.dart';
import 'loans.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => exit(100),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.black,
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            IndexedStack(
              index: currentIndex,
              children: const [
                Home_Screen(),
                Loan(),
                Fund(),
                CalculatorScreen()
              ],
            ),
            Container(
              height: 8.h,
              width: double.infinity,
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(40)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        currentIndex = 0;
                      });
                    },
                    child: Icon(
                        currentIndex == 0 ? Icons.home : Icons.home_outlined,
                        size: 28.sp),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        currentIndex = 1;
// Constants.snackBar(
// "Popular Images", "Click on image and show unique");
                      });
                    },
                    child: Icon(
                        currentIndex == 1
                            ? Icons.explore
                            : Icons.explore_outlined,
                        size: 28.sp),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        currentIndex = 2;
                      });
                    },
                    child: Icon(
                        currentIndex == 2
                            ? Icons.favorite
                            : Icons.favorite_outline,
                        size: 28.sp),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        currentIndex = 3;
                      });
                    },
                    child: Icon(
                        currentIndex == 3 ? Icons.person : Icons.person_outline,
                        size: 28.sp),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
