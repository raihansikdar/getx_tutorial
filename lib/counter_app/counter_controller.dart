import 'package:get/get.dart';

class CounterController extends GetxController{
  // int count = 0;
  //
  //  void increaseMethod(){
  //    count++;
  //    update();
  //  }

  RxInt count = 0.obs;
  void increaseMethod(){
    count.value++;
  }

}