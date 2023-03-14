
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:loan_app_01/view/splash_screen.dart';
import 'package:sizer/sizer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  visualDensity: VisualDensity.adaptivePlatformDensity;
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,

  ]).then((value) => runApp(

         Sizer(
          builder: (context, orientation, deviceType) {
            return GetMaterialApp(
              theme: ThemeData(
                colorScheme:
                ColorScheme.fromSwatch().copyWith(secondary: Colors.black),
              ),
              debugShowCheckedModeBanner: false,

              routes: {
                '/': (contest) => Splash_screen(),
              },
            );
          },
        ),
    ),
  );
}
