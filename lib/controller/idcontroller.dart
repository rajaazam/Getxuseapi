import 'package:get/get.dart';

class IdController extends GetxController{
  var count=0;
  void incrment(){
    count++;
    update(['Counter']);
  }
   void decrement(){
    count--;
    update(['Counter']);
  }
}