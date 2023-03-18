import 'package:flutter/material.dart';
import 'package:loan_app_01/const/constant.dart';

class What_is extends StatefulWidget {
  const What_is({Key? key}) : super(key: key);

  @override
  State<What_is> createState() => _What_isState();
}

class _What_isState extends State<What_is> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: appBar("mutual funds?"),
      body: mutual("""What is mutual funds?
      
A mutual fund is a company that pools money from many investors and invests the money in securities such as stocks, bonds, and short-term debt. The combined holdings of the mutual fund are known as its portfolio. Investors buy shares in mutual funds. Each share represents an investor’s part ownership in the fund and the income it generates."""),
    );
  }
}
