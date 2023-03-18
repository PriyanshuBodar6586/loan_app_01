import 'package:flutter/material.dart';
import 'package:loan_app_01/const/constant.dart';

class BikeLoan extends StatefulWidget {
  const BikeLoan({Key? key}) : super(key: key);

  @override
  State<BikeLoan> createState() => _BikeLoanState();
}

class _BikeLoanState extends State<BikeLoan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(      backgroundColor: Colors.black,

      appBar: appBar("Bike Loan"),
      body: loans("Bike"),
    );
  }
}
