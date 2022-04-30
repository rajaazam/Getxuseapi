import 'package:flutter/material.dart';
//import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:getxapp1/controller/my_product_controller.dart';
import 'package:getxapp1/controller/newproductcontroller.dart';
import 'package:getxapp1/models/newproduct.dart';
import 'package:getxapp1/views/product_tile_page.dart';
import 'package:getxapp1/views/testpage.dart';

class NewProductPage extends StatelessWidget {
  final NewProductController productController =
      Get.put(NewProductController());

  var index;

 // api link  https://fakestoreapi.com/products

  get StaggeredGridView => null;

  get StaggeredTile => null;

  // var StaggeredGridView;

  // get StaggeredTile => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: const Icon(
          Icons.arrow_back_ios,
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.shopping_cart,
            ),
            onPressed: () {
             // Get.to(TestPage());
             // Navigator.push(context, (MaterialPageRoute(builder:
              // (context)=>TestPage())));
            },
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                const Expanded(
                  child: Text(
                    'ShopX',
                    style: TextStyle(
                        fontFamily: 'avenir',
                        fontSize: 32,
                        fontWeight: FontWeight.w900),
                  ),
                ),
                IconButton(
                    icon: Icon(Icons.view_list_rounded), onPressed: () {}),
                IconButton(icon: Icon(Icons.grid_view), onPressed: () {}),
              ],
            ),
          ),
          Expanded(
            child: Obx(() {
              if (productController.isLoading.value) {
                return Center(child: CircularProgressIndicator());
              } else {
                return ListView.builder(
                    itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      Container(
                        child:
                            ProductTile(productController.productList[index]),
                      )
                    ],
                  );
                });
                //  ListView(children: [

                //   Container(
                //     height: 100,
                //     width: 100,
                //     color: Colors.green,
                //    child: ProductTile(productController.productList[index]),
                //   )
                // ],);

                // StaggeredGridView.countBuilder(
                //   crossAxisCount: 2,
                //   itemCount: productController.productList.length,
                //   crossAxisSpacing: 16,
                //   mainAxisSpacing: 16,
                //   itemBuilder: (context, index) {
                //     return ProductTile(productController.productList[index]);
                //   },
                //   staggeredTileBuilder: (index) => StaggeredTile.fit(1),
                // );
              }
            }),
          )
        ],
      ),
    );
  }
}
