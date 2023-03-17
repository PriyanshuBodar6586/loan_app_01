import 'package:flutter/material.dart';

class Fund extends StatefulWidget {
  const Fund({Key? key}) : super(key: key);

  @override
  State<Fund> createState() => _FundState();
}

class _FundState extends State<Fund> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar:AppBar(
      title: Text("Funds"),
    ),
    );
  }
}
