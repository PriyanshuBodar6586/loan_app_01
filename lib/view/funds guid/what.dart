import 'package:flutter/material.dart';
import 'package:loan_app_01/const/constant.dart';

class What extends StatefulWidget {
  const What({Key? key}) : super(key: key);

  @override
  State<What> createState() => _WhatState();
}

class _WhatState extends State<What> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: appBar("Wha Is NAV"),
      body: mutual("""NAV stands for Net Asset Value. The performance of a mutual fund scheme is denoted by its NAV per unit.

NAV per unit is the market value of securities of a scheme divided by the total number of units of the scheme on a given date. For example, if the market value of securities of a mutual fund scheme is ₹200 lakh and the mutual fund has issued 10 lakh units of ₹ 10 each to the investors, then the NAV per unit of the fund is ₹ 20 (i.e., ₹200 lakh/10 lakh).

Since market value of securities changes every day, NAV of a scheme also varies on day-to-day basis.

NAVs of mutual fund schemes are published on respective mutual funds’ websites as well as AMFI’s website daily.

Unlike stocks, where the price is driven by the stock market and changes from minute-to-minute, NAVs of mutual fund schemes are declared at the end of each trading day after markets are closed, in accordance with SEBI Mutual Fund Regulations. Further, Units of mutual fund schemes under all scheme (except Liquid & Overnight funds) are allotted only at prospective NAV, i.e., the NAV that would be declared at the end of the day, based on the closing market value of the securities held in the respective schemes.

A mutual fund may accept applications even after the cut-off time, but you will get the NAV of the next business day. Further, the cut-off time rules apply for redemptions too."""),
    );
  }
}
