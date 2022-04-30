


import 'package:get/get.dart';
//import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:getxapp1/models/newproduct.dart';
//import 'package:getxapp1/models/product_model.dart';
import 'package:getxapp1/services/remote_services.dart';

class NewProductController extends GetxController {
  var isLoading = true.obs;
  var productList =
  <NewProduct>[].obs;
  //List<NewProduct>().obs;
  

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    try {
      isLoading(true);
      var products = await RemoteServices.fetchProducts();
      if (products != null) {
        productList.value =products;
         //NewProduct as List<NewProduct>;
      }
    } finally {
      isLoading(false);
    }
  }
  
}