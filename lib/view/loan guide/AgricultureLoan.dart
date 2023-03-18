import 'package:flutter/material.dart';
import 'package:loan_app_01/const/constant.dart';

class AgricultureLoan extends StatefulWidget {
  const AgricultureLoan({Key? key}) : super(key: key);

  @override
  State<AgricultureLoan> createState() => _AgricultureLoanState();
}

class _AgricultureLoanState extends State<AgricultureLoan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(      backgroundColor: Colors.black,

      appBar: appBar("Agriculture Loan"),
      body: loans("Agriculture"),
    );
  }
}
