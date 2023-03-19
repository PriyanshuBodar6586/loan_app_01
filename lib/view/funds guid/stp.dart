import 'package:flutter/material.dart';
import 'package:loan_app_01/const/constant.dart';

class STP extends StatefulWidget {
  const STP({Key? key}) : super(key: key);

  @override
  State<STP> createState() => _STPState();
}

class _STPState extends State<STP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: appBar("SIP & STP"),
      body: mutual("""SIP, STP and SWP are all different strategic methods of systematic investment and withdrawal from Mutual Funds. While SIP is systematically investing in mutual funds, STP is systematically transferring money from one mutual fund to another, and SWP is systematic withdrawal of funds from mutual

"""),
    );
  }
}
