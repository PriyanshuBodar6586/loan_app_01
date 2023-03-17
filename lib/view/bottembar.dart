import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:get/get.dart';
import 'package:loan_app_01/controller/home_controller.dart';
import 'package:loan_app_01/view/funds.dart';
import 'package:loan_app_01/view/home_screen.dart';
import 'package:loan_app_01/view/loans.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  HomeController cnt = Get.put(HomeController());
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar:
              Obx(
                ()=> CurvedNavigationBar(
                  key: _bottomNavigationKey,
                  index: cnt.select.value,
                  height: 60.0,
                  items: <Widget>[
                    Icon(Icons.add, size: 30,color: Colors.white),
                    Icon(Icons.list, size: 30,color: Colors.white),
                    Icon(Icons.compare_arrows, size: 30,color: Colors.white),
                    Icon(Icons.call_split, size: 30,color: Colors.white),
                  ],
                  color: Colors.blueAccent,
                  buttonBackgroundColor: Colors.blueAccent,
                  backgroundColor: Colors.white,
                  animationCurve: Curves.easeInOut,
                  animationDuration: Duration(milliseconds: 600),
                  onTap: (index) {
                      cnt.select(index);
                  },
                  letIndexChange: (index) => true,
                ),
              ),
        body:  Obx(
          ()=> IndexedStack(
              index:cnt.select.value,
              children: [
                Home_Screen(),
                Loan(),
                Fund(),
                Home_Screen(),
              ],
            ),
        ),

    );
  }
}
