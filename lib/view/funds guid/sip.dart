import 'package:flutter/material.dart';
import 'package:loan_app_01/const/constant.dart';

class Sip extends StatefulWidget {
  const Sip({Key? key}) : super(key: key);

  @override
  State<Sip> createState() => _SipState();
}

class _SipState extends State<Sip> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: appBar("mutual funds?"),
      body: mutual("""Systematic Investment Plan (SIP) is an investment route offered by Mutual Funds wherein one can invest a fixed amount in a Mutual Fund scheme at regular intervals– say once a month or once a quarter, instead of making a lump-sum investment. The installment amount could be as little as INR 500 a month and is similar to a recurring deposit. It’s convenient as you can give your bank standing instructions to debit the amount every month.

SIP has been gaining popularity among Indian MF investors, as it helps in investing in a disciplined manner without worrying about market volatility and timing the market. Systematic Investment Plans offered by Mutual Funds are easily the best way to enter the world of investments for the long term. It is very important to invest for the long-term, which means that you should start investing early, in order to maximize the end returns. So your mantra should be - Start Early, Invest Regularly to get the best out of your investments."""),
    );
  }
}
