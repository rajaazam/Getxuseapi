import 'package:flutter/material.dart';
import 'package:getxapp1/controller/product_controller.dart';
import 'package:get/get.dart';
import 'package:getxapp1/screen/wishlist_screen.dart';

class HomePage extends StatelessWidget {
  //const HomePage({ Key? key }) : super(key: key);
  final Products _p = Get.put(Products());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  const Text('Home page'),
      ),
      body: Column(
        children:  [
          const SizedBox(
            height: 20,
          ),
          InkWell(
            child: Container(
              width: 300,
              height: 80,
              color: Colors.red,
              alignment: Alignment.center,
              // Use Obx(()=> to update Text() whenever _wishList.items.length is changed
              child: Obx(() => Text(
                    'Wish List: ${_p.wishListItems.length}',
                    style: const TextStyle(fontSize: 28, color: Colors.white),
                  )),
            ),
            onTap: () => 
            //Get.to(WishListPage())
          Navigator.push(context,
                MaterialPageRoute(builder: (context) => WishListPage())),
          ),

          const SizedBox(
            height: 20,
          ),

          Expanded(child: 
           ListView.builder(
             itemCount: _p.items.length,
             itemBuilder: (context,index){
               final Products= _p.items[index];
               return Card(
                 key: ValueKey(Products.id),
                 margin: const EdgeInsets.all(5.0),
                 color: Colors.amberAccent,
                 child: ListTile(
                   title: Text(Products.name),
                   subtitle: Text("/${Products.price.toStringAsFixed(2)}"),
                   trailing: Obx(()=>IconButton(onPressed: (){
                     if(Products.inWishList==false){
                       _p.addItem(Products.id);
                     }else{

                       _p.removeItem(Products.id);
                     }

                   },
                   
                    icon: Icon(Icons.favorite,color:
                     Products.inWishList.value==false?
                    Colors.white
                    :
                    Colors.red,),
                    )),
                 ),
               );
             }
           )
          
          ),

        ],
      ),
    );
  }
}