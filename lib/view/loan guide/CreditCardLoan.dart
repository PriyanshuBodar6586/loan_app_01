import 'package:flutter/material.dart';
import 'package:loan_app_01/const/constant.dart';

class CreditCardLoan extends StatefulWidget {
  const CreditCardLoan({Key? key}) : super(key: key);

  @override
  State<CreditCardLoan> createState() => _CreditCardLoanState();
}

class _CreditCardLoanState extends State<CreditCardLoan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(      backgroundColor: Colors.black,

      appBar: appBar("CreditCard Loan"),
      body: loans("CreditCard"),
    );
  }
}
