import 'package:flutter/material.dart';
import 'package:loan_app_01/const/constant.dart';

class CarLoan extends StatefulWidget {
  const CarLoan({Key? key}) : super(key: key);

  @override
  State<CarLoan> createState() => _CarLoanState();
}

class _CarLoanState extends State<CarLoan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(      backgroundColor: Colors.black,

      appBar: appBar("Car Loan"),
      body: loans("car"),
    );
  }
}
