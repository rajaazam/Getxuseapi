import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxapp1/controller/product_controller.dart';
import 'package:getxapp1/models/items.dart';
class WishListPage extends StatelessWidget {
  final Products _p =Get.find<Products>();
 WishListPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("List of item :${_p.wishListItems.length}")),
      
      ),
      body: Obx(()=>ListView.builder(
        itemCount: _p.wishListItems.length,
        itemBuilder: (context,index){
          final item = _p.wishListItems[index];
        return Card(
          key: ValueKey(item.id),
          margin: const EdgeInsets.all(5),
                color: Colors.blue[200],

          child: ListTile(
            title: Text(item.name),
            subtitle: Text(item.price.toStringAsFixed(2)),
            trailing: IconButton(onPressed: (){
             item.inWishList.value==false;
             _p.removeItem(item.id);

            }, icon: Icon(Icons.close)),
          ),
        );
      })
      
      
      ),
    );
  }
}