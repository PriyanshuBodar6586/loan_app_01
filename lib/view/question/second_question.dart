import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loan_app_01/view/question/question_three.dart';
import 'package:sizer/sizer.dart';
import 'package:vertical_card_pager/vertical_card_pager.dart';

class Second_question extends StatefulWidget {
  @override
  _Second_questionState createState() => _Second_questionState();
}

class _Second_questionState extends State<Second_question> {
  @override
  Widget build(BuildContext context) {
    final List<String> titles = [
      " ",
      " ",
      " ",
      " ",
      " ",
      " ",
      " ",
      " ",
      " ",
      " ",
      " ",
    ];

    final List<Widget> images = [
      Container(
        child: Image.asset("assets/image/no.png"),
      ),
      Container(
        child: Image.asset("assets/image/i01.png"),
      ),
      Container(
        child: Image.asset("assets/image/i02.png"),
      ),
      Container(
        child: Image.asset("assets/image/i03.png"),
      ),
      Container(
        child: Image.asset("assets/image/i4.png"),
      ),
      Container(
        child: Image.asset("assets/image/i5.png"),
      ),
      Container(
        child: Image.asset("assets/image/i6.png"),
      ),
      Container(
        child: Image.asset("assets/image/i7.png"),
      ),
      Container(
        child: Image.asset("assets/image/i8.png"),
      ),
      Container(
        child: Image.asset("assets/image/i9.png"),
      ),
      Container(
        child: Image.asset("assets/image/i10.png"),
      ),
    ];
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text("What Is your Income?",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 25.h,
            width: 100.w,
            color: Colors.white,
          ),
          Expanded(
            child: Container(
              child: VerticalCardPager(
                textStyle: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold),
                titles: titles,
                images: images,
                initialPage: 0,
                onPageChanged: (page) {},
                align: ALIGN.CENTER,
                onSelectedItem: (index) {
                  Get.to(Thered_question());
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
