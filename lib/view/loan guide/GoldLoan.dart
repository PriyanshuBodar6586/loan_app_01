import 'package:flutter/material.dart';
import 'package:loan_app_01/const/constant.dart';

class GoldLoan extends StatefulWidget {
  const GoldLoan({Key? key}) : super(key: key);

  @override
  State<GoldLoan> createState() => _GoldLoanState();
}

class _GoldLoanState extends State<GoldLoan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(      backgroundColor: Colors.black,

      appBar: appBar("Gold Loan"),
      body: loans("Gold"),
    );
  }
}
