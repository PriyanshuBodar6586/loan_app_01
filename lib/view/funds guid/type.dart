import 'package:flutter/material.dart';
import 'package:loan_app_01/const/constant.dart';

class Types extends StatefulWidget {
  const Types({Key? key}) : super(key: key);

  @override
  State<Types> createState() => _TypesState();
}

class _TypesState extends State<Types> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: appBar("Type of Funds"),
      body: mutual("""Equity Funds
Debt Funds
Money Market Funds
Hybrid Funds
Growth Funds
Income Funds
Liquid Funds
Tax-Saving Funds
Aggressive Growth Funds
Capital Protection Funds
Fixed Maturity Funds
Pension Funds"""),
    );
  }
}
