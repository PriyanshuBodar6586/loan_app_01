import 'package:flutter/material.dart';
import 'package:loan_app_01/const/constant.dart';

class PersonalLoan extends StatefulWidget {
  const PersonalLoan({Key? key}) : super(key: key);

  @override
  State<PersonalLoan> createState() => _PersonalLoanState();
}

class _PersonalLoanState extends State<PersonalLoan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(      backgroundColor: Colors.black,

      appBar: appBar("Personal Loan"),
      body: loans("Personal"),
    );
  }
}
