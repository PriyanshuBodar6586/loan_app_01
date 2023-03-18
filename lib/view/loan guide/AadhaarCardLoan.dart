import 'package:flutter/material.dart';
import 'package:loan_app_01/const/constant.dart';

class AadhaarCardLoan extends StatefulWidget {
  const AadhaarCardLoan({Key? key}) : super(key: key);

  @override
  State<AadhaarCardLoan> createState() => _AadhaarCardLoanState();
}

class _AadhaarCardLoanState extends State<AadhaarCardLoan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: appBar("AadhaarCard Loan"),
      body: loans("AadhaarCard"),
    );
  }
}
