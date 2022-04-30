 import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxapp1/controller/studentController.dart';
 class Gextpage extends StatelessWidget {
    //final Controller c  =Get.put(Controller());
   //var stdc=StudentController;
   //final std1=StudentController('ali',33).obs;
    final StudentController sc= Get.put(StudentController());
    //final StudentController sc= Get.put(StudentController('Azam',33));
    Gextpage({ Key? key }) : super(key: key);
   // StudentController=Get.put(StudentController());
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Text('Gext page'),
       ),
       body: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.start,
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             
             Obx(
                  ()=> Text('The name of std is:${sc.name}'),

             ),
             SizedBox(height: 20,),
             ElevatedButton(onPressed: (){
               sc.name.value= sc.name.value.toUpperCase();
              
             }, child: Text('change to Upper case')),
              SizedBox(height: 20,),
             ElevatedButton(onPressed: (){
               sc.name.value= sc.name.value.toLowerCase();
             }, child: Text('change to lower case')
             ),
            
           ],
         ),
       ),
       
     );
   }
 }