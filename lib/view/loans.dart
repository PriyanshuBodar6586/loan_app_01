import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loan_app_01/view/loan%20guide/AadhaarCardLoan.dart';
import 'package:loan_app_01/view/loan%20guide/AgricultureLoan.dart';
import 'package:loan_app_01/view/loan%20guide/BikeLoan.dart';
import 'package:loan_app_01/view/loan%20guide/BusinessLoan.dart';
import 'package:loan_app_01/view/loan%20guide/CarLoan.dart';
import 'package:loan_app_01/view/loan%20guide/CreditCardLoan.dart';
import 'package:loan_app_01/view/loan%20guide/EducationLoan.dart';
import 'package:loan_app_01/view/loan%20guide/GoldLoan.dart';
import 'package:loan_app_01/view/loan%20guide/PersonalLoan.dart';
import 'package:sizer/sizer.dart';

import 'loan guide/home_loan.dart';

class Loan extends StatefulWidget {
  const Loan({Key? key}) : super(key: key);

  @override
  State<Loan> createState() => _LoanState();
}

class _LoanState extends State<Loan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 00,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          "Loan  Guide",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Selecte(() {
                      Get.to(const BusinessLoan());
                    }, "Business Loan", "assets/image/1.png"),
                    Selecte(() {
                      Get.to(const CreditCardLoan());
                    }, "CreditCard Loan", "assets/image/2.png"),
                  ],
                ),
                Row(
                  children: [
                    Selecte(() {
                      Get.to(const CarLoan());
                    }, "Car Loan", "assets/image/11.png"),
                    Selecte(() {
                      Get.to(const AadhaarCardLoan());
                    }, "AadhaarCard Loan", "assets/image/12.png"),
                  ],
                ),
                Row(
                  children: [
                    Selecte(() {
                      Get.to(const BikeLoan());
                    }, "Bike Loan", "assets/image/5.png"),
                    Selecte(() {
                      Get.to(const GoldLoan());
                    }, "Gold Loan", "assets/image/6.png"),
                  ],
                ),
                Row(
                  children: [
                    Selecte(() {
                      Get.to(const PersonalLoan());
                    }, "Personal Loan", "assets/image/7.png"),
                    Selecte(() {
                      Get.to(
                        const Home_loan(),
                      );
                    }, "Home Loan", "assets/image/8.png"),
                  ],
                ),
                Row(
                  children: [
                    Selecte(() {
                      Get.to(const AgricultureLoan());
                    }, "Agriculture Loan", "assets/image/3.png"),
                    Selecte(() {
                      Get.to(const EducationLoan());
                    }, "Education Loan", "assets/image/10.png"),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget Selecte(
    void Function() onTap,
    String text,
    String image,
  ) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: InkWell(
        borderRadius: BorderRadius.circular(15),
        onTap: onTap,
        child: Container(
          height: 30.h,
          width: 47.w,
          decoration: BoxDecoration(
              color: Colors.white10,
              boxShadow: [
                BoxShadow(
                    color: Colors.white,
                    offset: Offset(0, 0),
                    blurRadius: 4,
                    blurStyle: BlurStyle.outer
                    //spreadRadius: 2,
                    ),
              ],
              borderRadius: BorderRadius.circular(10)),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 20.h,
                  width: 20.h,
                  decoration: BoxDecoration(
                    color: Colors.black12,
                  ),
                  child: Image.asset("$image", fit: BoxFit.cover),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text("$text", style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
