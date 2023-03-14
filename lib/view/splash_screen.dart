import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class Splash_screen extends StatefulWidget {
  const Splash_screen({Key? key}) : super(key: key);

  @override
  State<Splash_screen> createState() => _Splash_screenState();
}

class _Splash_screenState extends State<Splash_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,

      body: Center(
        child:Container(
          height: 300,
          width: 300,
          child: Neumorphic(

              style: NeumorphicStyle(

                  shape: NeumorphicShape.flat,
                  boxShape: NeumorphicBoxShape.beveled(BorderRadius.circular(20),),
                  depth:-30,
                  lightSource: LightSource.topLeft,
                  color: Colors.grey
              ),
            child: NeumorphicText(
              "I love flutter",
              style: NeumorphicStyle(
                depth: 4,  //customize depth here
                color: Colors.white, //customize color here
              ),
              textStyle: NeumorphicTextStyle(
                fontSize: 18, //customize size here
                // AND others usual text style properties (fontFamily, fontWeight, ...)
              ),
            ),
          ),
        )
      ),
    );
  }
}
