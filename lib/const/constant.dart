import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loan_app_01/view/question/first_question.dart';
import 'package:sizer/sizer.dart';


class Appcolor {
  static Color fullwhite = const Color(0xFFFFFFFF);
  static Color fullblack = const Color(0xFF000000);
  static Color darkblue = const  Color(0xff130033);
  static Color pinkk = const Color(0xffF307A5);
  static Color fillblue = const Color(0xff281b60);
  static Color fpur = const Color(0xffB783EB);
  static Color bpur = const Color(0xff251759);








// static gradientButton(
  //     void Function() onTap, double pDblHeight, double pDblWidth, String pStrText) {
  //   return InkWell(
  //     onTap: onTap,
  //     child: Container(
  //       height: pDblHeight,
  //       width: pDblWidth,
  //       decoration: BoxDecoration(
  //         borderRadius: BorderRadius.circular(40),
  //         gradient: LinearGradient(
  //           begin: Alignment.topLeft,
  //           end: Alignment(2, 3),
  //           colors: <Color>[
  //             Color(0xffDD3562),
  //             Color(0xff8A51F2),
  //           ],
  //
  //           tileMode: TileMode.mirror,
  //
  //         ),
  //       ),
  //     child: Center(child: Text(pStrText,style: TextStyle(fontSize: 20.sp,color: Const.fullwhite),)),
  //     ),
  //   );
  // }


}
const blueGradient = LinearGradient(
  colors: [
    Color(0XFF2bbefe),
    Color(0XFF6399ff),
  ],
  begin: Alignment.topRight,
  end: Alignment.bottomLeft,
);
const darkRedGradient = LinearGradient(
  colors: [
    Color(0XFFdd526b),
    Color(0XFFf8b699),
  ],
  begin: Alignment.topRight,
  end: Alignment.bottomLeft,
);
const tealGradient = LinearGradient(
  colors: [
    Color(0XFF199786),
    Color(0XFF74d9d0),
  ],
  begin: Alignment.topRight,
  end: Alignment.bottomLeft,
);
const redGradient = LinearGradient(
  colors: [
    Color(0XFFA7462C),
    Color(0XFFFD8B66),
  ],
  begin: Alignment.topRight,
  end: Alignment.bottomLeft,
);
const purpleGradient = LinearGradient(
  colors: [
    Color(0XFF71489D),
    Color(0XFFAA6DEC),
  ],
  begin: Alignment.topRight,
  end: Alignment.bottomLeft,
);
const yellowGradient = LinearGradient(
  colors: [
    Color(0XFFFFAF44),
    Color(0XFFFDD640),
  ],
  begin: Alignment.topRight,
  end: Alignment.bottomLeft,
);
appBar(String pStrText){
  return  AppBar(
    centerTitle: true,
    backgroundColor: Colors.black,
    title:  Text(pStrText,
        style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
  );
}
loans(String pStrText){
  return Stack(
    children: [
      Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          height: 100.h,
          width: 100.h,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(17),
            boxShadow: const [
              BoxShadow(
                  color: Colors.white,
                  offset: Offset(0, 0),
                  blurRadius: 5,
                  blurStyle: BlurStyle.outer
                //spreadRadius: 2,
              ),
            ],
          ),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
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
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SelectableText(
                      """Once you finalize the property, the next important phase is to apply for the $pStrText Loan.

The $pStrText Loan Process begins with identifying the best banks or financial institutions. And, to compare different banks for the best $pStrText loan plans needs a clear understanding of the various terminologies. Knowing the important factors such as $pStrText Loan Interest Rates, Type Of Interest Rates, Processing Fees, Interest Rates Calculation, Loan Tenure, EMIs beforehand keeps you on the right track. 

Having accurate insights on the $pStrText Loan process and a solid repayment strategy is the key to successful $pStrText buying. 

Therefore, in this article, you will get a comprehensive overview of the $pStrText Loans from all aspects.

$pStrText Loan Interest Rates:
Interest rate is one of the main parameters for selecting the bank for a $pStrText Loan. The $pStrText loan interest rates are linked to external benchmarks governed by the RBI. Therefore, depending on the RBI’s Repo rates, interest rates can go up or down. Currently, the interest rates have dipped to 15 year low. Banks are offering $pStrText loans with interest rates lower than 7%. 

Pre Interest EMI:
If you take a $pStrText loan for under-construction properties then the loan is disbursed in various stages. If the bank gives you a pre-EMI facility, you need to pay the interest only on the disbursed loan amount.

If you are buying under-construction property the choosing the bank that offers pre-interest EMIs is always beneficial. """,
                      style: const TextStyle(color: Colors.white)),
                ),

                SizedBox(
                  height: 10.h,
                ),
              ],
            ),
          ),
        ),
      ),
      Align(alignment: Alignment.bottomCenter,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: InkWell(
            borderRadius: BorderRadius.circular(15),
            onTap: (){
              Get.to(First_question());
            },
            child: Container(
              height: 8.h,
              width: 95.w,
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.9),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.white.withOpacity(0.7),
                        offset: Offset(0, 0),
                        blurRadius: 4,
                        blurStyle: BlurStyle.outer
                      //spreadRadius: 2,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(15)),
              child: Center(child: Text("Next",style: TextStyle(color: Colors.black,fontSize: 15.sp,fontWeight: FontWeight.w700,letterSpacing: 1))),
            ),
          ),
        ),
      ),
    ],
  );
}


mutual(String pStrText){
  return Stack(
    children: [
      Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          height: 100.h,
          width: 100.h,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(17),
            boxShadow: const [
              BoxShadow(
                  color: Colors.white,
                  offset: Offset(0, 0),
                  blurRadius: 5,
                  blurStyle: BlurStyle.outer
                //spreadRadius: 2,
              ),
            ],
          ),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
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
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SelectableText(
                      """$pStrText""",
                      style: const TextStyle(color: Colors.white)),
                ),

                SizedBox(
                  height: 10.h,
                ),
              ],
            ),
          ),
        ),
      ),
      Align(alignment: Alignment.bottomCenter,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: InkWell(
            borderRadius: BorderRadius.circular(15),
            onTap: (){
              Get.to(First_question());
            },
            child: Container(
              height: 8.h,
              width: 95.w,
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.9),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.white.withOpacity(0.7),
                        offset: Offset(0, 0),
                        blurRadius: 4,
                        blurStyle: BlurStyle.outer
                      //spreadRadius: 2,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(15)),
              child: Center(child: Text("Next",style: TextStyle(color: Colors.black,fontSize: 15.sp,fontWeight: FontWeight.w700,letterSpacing: 1))),
            ),
          ),
        ),
      ),
    ],
  );
}