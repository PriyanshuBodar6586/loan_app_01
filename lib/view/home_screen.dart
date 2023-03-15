import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Container(
          height: 100.h,
          child: Image.asset('assets/image/ezgif.com-video-to-gif.gif',fit: BoxFit.cover),
        ),
      ),
    );
  }
}
