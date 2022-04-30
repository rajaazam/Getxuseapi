import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxapp1/controller/languagecontroller.dart';
import 'package:getxapp1/models/messagemodel.dart';
class LanguagePage extends StatelessWidget {
 final controller= Get.put(LanguageController());
   LanguagePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(title: Text('Wellcome to Langauge page'),),
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          Text('change Hello into different langauge:${controller.text}'),
          Text('How are YOu?'),
               Text('hello'.tr,style: TextStyle(fontSize: 20.0,
               fontWeight: FontWeight.bold,color: Colors.blueAccent),),
               SizedBox(height: 5,),
                 Text('How are You'.tr,style: TextStyle(fontSize: 20.0,
               fontWeight: FontWeight.bold,color: Colors.blueAccent),),
                SizedBox(height: 5,),
                 Text('where are you form'.tr,style: TextStyle(fontSize: 20.0,
               fontWeight: FontWeight.bold,color: Colors.blueAccent),),
               SizedBox(height: 20,),
               SizedBox(height: 20,),
               ElevatedButton(onPressed: (){
                 controller.chanelangauge('urdu', 'Pakistan');
               }, child: Text('pakiatni')
               ),
                ElevatedButton(onPressed: (){
                 controller.chanelangauge('en', 'US');
               }, child: Text('US')
               ),
               SizedBox(height: 20,),
                ElevatedButton(onPressed: (){
                 controller.chanelangauge('persion', 'Iran');
               }, child: Text('Iran')
               ),
                SizedBox(height: 20,),
                ElevatedButton(onPressed: (){
                 controller.chanelangauge('arabic', 'saudi');
               }, child: Text('arabic')
               ),
                SizedBox(height: 20,),
                ElevatedButton(onPressed: (){
                 controller.chanelangauge('en', 'china');
               }, child: Text('china')
               ),
        ],
      ),),
      
    );
  }
}