import 'package:get/get.dart';

class CardController extends GetxController{
  var books= 0.obs;
  var mobiles=0.obs;
  int get sum=>books.value +mobiles.value;

  bookincrement(){
    books.value++;
  }
   bookdecremet(){
    if (books.value<=0) {
      Get.snackbar('Buying books', "Can not be less than zero",
      barBlur: 20,
      duration: Duration(seconds: 5),
      isDismissible: true,
      );
      
    } else {
      books.value--;

  
    }
    
   }
   //mobile
   mobileincremt(){
     mobiles.value++;
   }
   moblidec(){
     if (mobiles.value<=0) {
        Get.snackbar('Buying mobile', "Can not be less than zero",
      barBlur: 20,
      duration: Duration(seconds: 5),
      isDismissible: true,
      );
       
     } else {
       mobiles.value--;
     }
   }
    
    }



  