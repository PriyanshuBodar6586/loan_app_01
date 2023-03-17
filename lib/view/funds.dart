import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Fund extends StatefulWidget {
  const Fund({Key? key}) : super(key: key);

  @override
  State<Fund> createState() => _FundState();
}

class _FundState extends State<Fund> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 00,
        backgroundColor: Colors.white,
        title: Text("Funds",
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20.sp)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Card(
          elevation: 30,
          child: Container(
            height: 100.h,
            width: 100.h,
            color: Colors.white,
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  SizedBox(
                    height: 1.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      elevation: 30,
                      child: Container(
                        height: 25.h,
                        width: 100.w,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: (){},
                      child: Container(
                        height: 8.h,
                        width: 100.w,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.blueAccent, width: 2),
                            borderRadius: BorderRadius.circular(15)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("What is Mutual fund?"),
                              Icon(Icons.arrow_forward_ios),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Selecte((){},"What is sip?"),
                  Selecte((){},"Matual fund vs sip"),
                  Selecte((){},"Benefits of investing in SIP"),
                  Selecte((){},"Type of mutual fund"),
                  Selecte((){},"ELSS (Tax Saver)"),
                  Selecte((){},"Tips to choose fund"),
                  Selecte((){},"What is NAV?"),
                  Selecte((){},"Lumpsum Vs SIP"),
                  Selecte((){},"SIP Vs STP Vs SWP"),
                  Selecte((){},"Growth Plan Vs Divident Plan"),
                  Selecte((){},"Direct Vs Regular"),
                  Selecte((){},"How to invest in MF?"),
                  Selecte((){},"Disadvantages of MF"),
                  Selecte((){},"Frequently Asked Questions"),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      elevation: 30,
                      child: Container(
                        height: 25.h,
                        width: 100.w,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  Widget Selecte(void Function() onTap,String text, ) {
    return   Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: (){},
        child: Container(
          height: 8.h,
          width: 100.w,
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.blueAccent, width: 2),
              borderRadius: BorderRadius.circular(15)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("$text"),
                Icon(Icons.arrow_forward_ios),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
