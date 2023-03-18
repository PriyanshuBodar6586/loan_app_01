import 'package:flutter/material.dart';
import 'package:loan_app_01/const/constant.dart';

class BusinessLoan extends StatefulWidget {
  const BusinessLoan({Key? key}) : super(key: key);

  @override
  State<BusinessLoan> createState() => _BusinessLoanState();
}

class _BusinessLoanState extends State<BusinessLoan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(      backgroundColor: Colors.black,

      appBar: appBar("Business Loan"),
       body: loans("Business"),
    );
  }
}
