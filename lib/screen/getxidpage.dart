import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxapp1/controller/idcontroller.dart';
class GetxIdPage extends StatelessWidget {
  final controller=Get.put(IdController());
 GetxIdPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Getx id use page'),
      ),
      body: Center(
        child: Column(
          children: [
           GetBuilder<IdController>(
             id:'Counter' ,
           builder: (controller){
              return Text('value is :${controller.count}') ;

           }, ),
            GetBuilder<IdController>(
            // id:'Counter' ,
           builder: (controller){
              return Text('value is :${controller.count}') ;

           }, ),
            SizedBox(height: 20,),
           ElevatedButton(onPressed: (){
             controller.incrment();
           }, child: Text('to add')
           ),
           SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
             controller.decrement();
           }, child: Text('to sub')
           ),
          ],
        ),
      ),
      
    );
  }
}