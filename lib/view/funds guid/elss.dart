import 'package:flutter/material.dart';
import 'package:loan_app_01/const/constant.dart';

class Elss extends StatefulWidget {
  const Elss({Key? key}) : super(key: key);

  @override
  State<Elss> createState() => _ElssState();
}

class _ElssState extends State<Elss> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: appBar("Elss (Tex)"),
      body: mutual("""Equity Linked Savings Schemes (tax saver mutual funds) are also among the most tax friendly investment schemes among the eligible Section 80C investment options. There is no taxation during the investment period, unlike many fixed income 80C investment options. Since ELSS are equity oriented schemes with a minimum investment period of three years, capital gains from Equity Linked Savings Schemes up to Rs 1 lakh in a year is tax exempt. Capital gains in excess of Rs 1 lakh in any financial year is taxed at 10%. Dividends paid by ELSS funds are also tax free in the hands of the investors"""),
    );
  }
}
