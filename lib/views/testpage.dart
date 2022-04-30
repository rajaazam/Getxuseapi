import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxapp1/controller/testcontroller.dart';
import 'package:getxapp1/models/testmodel.dart';
import 'package:getxapp1/views/test_title.dart';

class TestPage extends StatelessWidget {
  final TestController  c = Get.put(TestController());

  get index => null;
  // final TestModel test;
  // TestPage(   this.test);
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: Text('This is test product page'),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.shopping_cart,
            ),
            onPressed: () {},
          )
        ],
      ),
      body:  Column(children: [
        //Text(test.name),
      
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


          Container(child: TestTitle(c.productLists[index]),),
           Expanded(child: Obx((){

             if(c.isLoading.value){
               return const Center(child: CircularProgressIndicator(),);
             }
             else{
               return ListView.builder(itemBuilder: 
               (BuildContext context, int index){
                    return Column(
                      children: const [
                      
                       
                      ],
                    );
               });
             }
           })),
          
          // Text(test.email))
      
      ],),
    );
  }
}