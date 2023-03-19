import 'package:flutter/material.dart';
import 'package:loan_app_01/const/constant.dart';

class Tips extends StatefulWidget {
  const Tips({Key? key}) : super(key: key);

  @override
  State<Tips> createState() => _TipsState();
}

class _TipsState extends State<Tips> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: appBar("Tips"),
      body: mutual(""" Mutual fund selection is based on several parameters. These include return expectation, risk tolerance, and investment horizon. There are different parameters to consider for fund selection including expense ratio, past performance, fund manager experience, and assets under management. Once you, as an investor, do your research, you will have a clear idea as to where you want to invest. And what type of category or funds. 

How to choose mutual funds is a common question. Here is a guide to mutual fund investment, you may consider while selecting mutual funds for investments."""),
    );
  }
}
