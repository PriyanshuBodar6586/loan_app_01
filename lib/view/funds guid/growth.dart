import 'package:flutter/material.dart';
import 'package:loan_app_01/const/constant.dart';

class Growth extends StatefulWidget {
  const Growth({Key? key}) : super(key: key);

  @override
  State<Growth> createState() => _GrowthState();
}

class _GrowthState extends State<Growth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: appBar("Dividend vs Growth"),
      body: mutual("""Dividend vs Growth Option
Just like you have two plans to choose from while investing in mutual funds, investors have two different investment options in the form of growth and dividend. In the growth option, if the mutual fund you invested in manages to make any profits, these profits are invested back into the scheme. Over time, this may (or may not) result in the increase in the net asset value of the scheme. The growth payout option in mutual funds is generally benefited."""),
    );
  }
}
