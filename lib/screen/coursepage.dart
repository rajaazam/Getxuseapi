import 'package:flutter/material.dart';
import 'package:get/get.dart';
class CoursePage extends StatelessWidget {
  const CoursePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Course page'),
      ),
      body: Container(
      
        child: 
      Column(
        children: [
          Text('Well come to course '),
         // SizedBox(height: 20,),
          Text('Pthon'+Get.arguments['PythonFees'],
          style: TextStyle(fontSize: 30,color: Colors.grey.shade600),
          ),
           const SizedBox(height: 20,),
          Text('PHP'+Get.arguments['PhPFees'] ,
          style: TextStyle(fontSize: 30,color: Colors.grey.shade600),
          ),
           const SizedBox(height: 20,),
          Text('AI'+Get.arguments['AIFees'],
          style: TextStyle(fontSize: 30,color: Colors.grey.shade600),
          ),
          Container(
              width: 200,
        height: 70,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0)
        ),
            child: ElevatedButton(onPressed: (){}, child: 
            Text('home',style: TextStyle(
                  fontSize: 20,
                  color:Colors.grey.shade900
              ),)
            ),
          )
        ],
      ),),
    );
  }
}