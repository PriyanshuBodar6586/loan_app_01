import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Loan extends StatefulWidget {
  const Loan({Key? key}) : super(key: key);

  @override
  State<Loan> createState() => _LoanState();
}

class _LoanState extends State<Loan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 00,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Loan  Type",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 30.h,
                      width: 48.w,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.blueAccent, width: 2),
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,

                               children: [
                                 Container(
                                   height: 20.h,
                                   width: 20.h,
                                   decoration: BoxDecoration(
                                       color: Colors.white
                                   ),
                                   child: Image.asset("assets/image/1.png",fit: BoxFit.cover),
                                 ),
                                 SizedBox(
                                   height: 2.h,
                                 ),
                                 Text("jkhkjshkashd"),
                               ],
                            ),
                      ),

                    ),
                   Selecte((){},"sadasd", "assets/image/2.png"),
                  ],
                ),
                Row(
                  children: [
                    Selecte((){},"text", "assets/image/3.png"),
                    Selecte((){},"text", "assets/image/4.png"),
                  ],
                ),
                Row(
                  children: [
                    Selecte((){},"text", "assets/image/5.png"),
                    Selecte((){},"text", "assets/image/6.png"),
                  ],
                ),
                Row(
                  children: [
                    Selecte((){},"text", "assets/image/7.png"),
                    Selecte((){},"text", "assets/image/8.png"),
                  ],
                ),
                Row(
                  children: [
                    Selecte((){},"text", "assets/image/9.png"),
                    Selecte((){},"text", "assets/image/10.png"),
                  ],
                ),
                Row(
                  children: [
                    Selecte((){},"text", "assets/image/11.png"),
                    Selecte((){},"text", "assets/image/1.png"),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
  Widget Selecte(void Function() onTap,String text,String image, ) {
    return   Padding(
      padding: const EdgeInsets.all(5),
      child:  InkWell(
        onTap:onTap,
        child: Container(
          height: 30.h,
          width: 47.w,
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.blueAccent, width: 2),
              borderRadius: BorderRadius.circular(10)),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Container(
                  height: 20.h,
                  width: 20.h,
                  decoration: BoxDecoration(
                      color: Colors.white
                  ),
                  child: Image.asset("$image",fit: BoxFit.cover),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text("$text"),
              ],
            ),
          ),

        ),
      ),
    );
  }


}
