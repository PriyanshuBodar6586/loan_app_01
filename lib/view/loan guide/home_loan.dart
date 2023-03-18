import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loan_app_01/const/constant.dart';
import 'package:loan_app_01/view/question/first_question.dart';
import 'package:sizer/sizer.dart';

class Home_loan extends StatefulWidget {
  const Home_loan({Key? key}) : super(key: key);

  @override
  State<Home_loan> createState() => _Home_loanState();
}

class _Home_loanState extends State<Home_loan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar:appBar("Home Loan"),
      body: loans("Home"),
    );
  }
}
