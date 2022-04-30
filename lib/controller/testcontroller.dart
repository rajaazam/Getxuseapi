import 'package:get/get.dart';
import 'package:getxapp1/models/testmodel.dart';
import 'package:getxapp1/services/testservices.dart';

class  TestController extends GetxController {
  var isLoading = true.obs;
  var productLists= <TestModel>[].obs;


  @override
  void onInit() {
    testdata();
    super.onInit();
  }


  void testdata()async {

    try{

      isLoading(true);
      var products= await TestServices.testdata();
      if(products!=null){
        productLists.value=products;
      }
    }finally{

      isLoading(false);
    }


    
  }
  
}