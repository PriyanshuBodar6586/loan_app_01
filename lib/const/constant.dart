import 'package:flutter/material.dart';


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
