import 'package:flutter/material.dart';
import 'package:loan_app_01/const/constant.dart';

class Benifit extends StatefulWidget {
  const Benifit({Key? key}) : super(key: key);

  @override
  State<Benifit> createState() => _BenifitState();
}

class _BenifitState extends State<Benifit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: appBar("Benifit of SIP"),
      body: mutual("""Rupee cost averaging is a concept where you purchase more units when the Net Asset Value (NAV) of the fund is low, and lesser units when the NAV is high. Essentially, it averages out your purchasing costs over the tenure of the investment period. You don’t need to worry about how to time the market when you invest through a SIP."""),
    );
  }
}
