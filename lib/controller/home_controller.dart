import 'package:get/get.dart';

class HomeController extends GetxController {

  String mStrName = "";

  RxInt select = 0.obs;


void change(int index){
  select.value = index;
}

}