import 'package:get/get.dart';

class AppController extends GetxController {
  RxInt n = 5.obs;
  RxBool isset = false.obs;
  RxString name = ''.obs;
  RxDouble result = 0.0.obs;
  void increase (){
    n++;
    print(n);
  }
  void decrease (){
    n--;
    print(n);
  }

}