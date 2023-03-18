import 'package:flutter/material.dart';
import 'package:loan_app_01/const/constant.dart';

class EducationLoan extends StatefulWidget {
  const EducationLoan({Key? key}) : super(key: key);

  @override
  State<EducationLoan> createState() => _EducationLoanState();
}

class _EducationLoanState extends State<EducationLoan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(      backgroundColor: Colors.black,

      appBar: appBar("Education Loan"),
      body: loans("Education"),
    );
  }
}
