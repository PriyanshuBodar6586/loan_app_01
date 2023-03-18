
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loan_app_01/view/question/second_question.dart';
import 'package:sizer/sizer.dart';
import 'package:vertical_card_pager/vertical_card_pager.dart';

class First_question extends StatefulWidget {
  @override
  _First_questionState createState() => _First_questionState();
}

class _First_questionState extends State<First_question> {
  @override
  Widget build(BuildContext context) {
    final List<String> titles = [
      " ",
      " ",
      " ",
      " ",
    ];

    final List<Widget> images = [

      Container(

       child: Image.asset("assets/image/banks.png"),
      ),
      Container(
        child: Image.asset("assets/image/cash.png"),
      ),
      Container(
        child: Image.asset("assets/image/chack.png"),
      ),
      Container(
        child: Image.asset("assets/image/upi.png"),
      ),


    ];
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text("Tack To Loan",style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold)),
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
                titles:titles,
                initialPage: 0,
                images: images,
                onPageChanged: (page) {
                },
                align: ALIGN.CENTER ,
                onSelectedItem: (index) {
                  Get.to(Second_question());

                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}