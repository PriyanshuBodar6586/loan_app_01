import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:loan_app_01/const/constant.dart';
import 'package:loan_app_01/controller/home_controller.dart';
import 'package:loan_app_01/main.dart';
import 'package:loan_app_01/view/calculator.dart';
import 'package:sizer/sizer.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(decelerationRate: ScrollDecelerationRate.normal),
        padding: EdgeInsets.only(left: 16, top: 54, right: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                _greetings(),
                _trailingIcons(),
              ],
            ),
            SizedBox(height: 24),
            _introCard(),
            Text('Features',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold)),
            SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                _menuItem(() {
                  setState(() {
                    controller.select.value = 1;
                  });
                }, 'Banks\nLoan', FontAwesomeIcons.bank, darkRedGradient),
                _menuItem((){
                  setState(() {
                    controller.select.value = 2;
                  });
                }, 'Mutual\nFund ',
                    FontAwesomeIcons.fileCode, tealGradient),
              ],
            ),
            SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                _menuItem(() {Get.to(Calculator());}, 'My\nCalculator', FontAwesomeIcons.calculator, redGradient),
                _menuItem(
                        () {}, 'Phone\ncard', FontAwesomeIcons.phone, purpleGradient),
              ],
            ),
            SizedBox(
              height: 1.h,
            ),
            Container(
              height: 25.h,
              width: 100.w,
              color: Colors.white,
            ),

          ],
        ),
      ),
    );
  }



  _menuItem(void Function() onTap, String title, IconData iconData,
      LinearGradient gradient) {
    return InkWell(
      borderRadius: BorderRadius.circular(13),
      onTap: onTap,
      child: Container(
        height: 30.h,
        width: 43.w,
        margin: EdgeInsets.all(4),
        padding: EdgeInsets.symmetric(horizontal: 4, vertical: 2),
        decoration: BoxDecoration(
          color: Colors.white10,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.white,
              offset: Offset(0, 0),
              blurRadius: 4,
              blurStyle: BlurStyle.outer
              //spreadRadius: 2,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(18),
              child: Center(
                child: Icon(iconData, size: 30.sp, color: Colors.white),
              ),
              decoration: BoxDecoration(
                gradient: gradient,
                shape: BoxShape.circle,
              ),
            ),
            SizedBox(height: 8),
            Text(
              title,
              style: TextStyle(
                fontSize: 15.sp,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }

  _introCard() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 30),
      padding: EdgeInsets.all(16),
      height: 160,
      decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(12),
          image: const DecorationImage(
            image: AssetImage('assets/image/bg.jpg'),
            fit: BoxFit.fill,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.blue.withOpacity(0.2),
              offset: Offset(0, 3),
              spreadRadius: 5,
              blurRadius: 5,
            )
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Online Cash Advance',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 20,
            ),
          ),
          SizedBox(height: 12),
          Text(
            'Fast,easy,secure \nlow prime rate.',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 18,
            ),
          ),
          Spacer(flex: 1),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'Explore',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 19,
                ),
              ),
              SizedBox(width: 8),
              Icon(FontAwesomeIcons.longArrowAltRight,
                  size: 36, color: Colors.white),
            ],
          )
        ],
      ),
    );
  }

  _greetings() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Hello !',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 4),
        Text(
          mStrName,
          style: TextStyle(
            color: Colors.grey[400],
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        )
      ],
    );
  }

  _trailingIcons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        IconButton(
          onPressed: () {},
          icon: Icon(FontAwesomeIcons.bell,
              size: 24, color: Colors.white),
        )
      ],
    );
  }
}
