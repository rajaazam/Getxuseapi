import 'package:flutter/material.dart';
import 'package:get/get.dart';
class MorePage extends StatelessWidget {
  const MorePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(' All Avabile Course'),
      ),
      body: Container(
      
        child: 
      Column(
        children: [
          const Text('Well come to  more course '),
          //Text('Fees for per course is :'+Get.arguments['price']?? '0'),
          //or
          Text('Fees for per course is :'+Get.arguments['price']),
          //Text(Get.arguments.toString()),
          Container(
        //       width: 200,
        // height: 70,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0)
        ),
            child: ElevatedButton(onPressed: (){}, child: 
            Text('back',style: TextStyle(
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