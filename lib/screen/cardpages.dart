import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxapp1/controller/cardcontroller.dart';

class CardPage extends StatelessWidget {
  final CardController c= Get.put(CardController());
  CardPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
         title: Text('Card'),
      ),
      body: Container(

        child: Column(
          children: [
            Container(
              child: Row(
                children: [
                  Text("Books"),
                  SizedBox(width: 20,),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(25)
                    ),
                    child: IconButton( onPressed:()=>c.bookincrement(), 
                  icon: Icon(Icons.add,color: Colors.white,),),
                  
                  ),
                  SizedBox(width: 20,),
                  Obx(()=>Text("${c.books.toString()}")),
                  SizedBox(width: 20,),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(25)
                    ),
                    child: IconButton( onPressed:()=>c.bookdecremet(), 
                  icon: Icon(Icons.remove, color: Colors.white,),),
                  
                  )
                ],
              ),
            ),

            SizedBox(height: 30,),
            //mobile
            Container(
              child: Row(
                children: [
                  Text("Mobiles"),
                  SizedBox(width: 20,),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(25)
                    ),
                    child: IconButton( onPressed:()=>c.mobileincremt(),
                  icon: Icon(Icons.add,color: Colors.white,),),
                  
                  ),
                  SizedBox(width: 20,),
                  Obx(()=>Text("${c.mobiles.toString()}")),
                  SizedBox(width: 20,),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(25)
                    ),
                    child: IconButton( onPressed:()=>c.moblidec(), 
                  icon: Icon(Icons.remove, color: Colors.white,),),
                  
                  )
                ],
              ),
            ),
            ElevatedButton(
              style:ElevatedButton.styleFrom(
       shape: RoundedRectangleBorder(
         borderRadius: BorderRadius.circular(30),
       )
              ),
              onPressed: ()=>Get.to(Mycard()), child:Text('Total'))
          ],
        ),
      ),
    );
  }
}

class Mycard extends StatelessWidget {
 final CardController c= Get.put(CardController());
  Mycard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('card page'),
      ),
      body: Center(child: 
      Column(
        children: [
          Text('Total item Price'),
          Obx(()=>Text("${c.sum}")),
          ElevatedButton(
              style:ElevatedButton.styleFrom(
       shape: RoundedRectangleBorder(
         borderRadius: BorderRadius.circular(30),
       )
              ),
              onPressed: ()=>Get.back(), child:Text('back'))
        ],
      ),),      
    );
  }
}