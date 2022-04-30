import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxapp1/models/newproduct.dart';
import 'package:getxapp1/models/testmodel.dart';
//import 'package:shopx/models/product.dart';

class TestTitle extends StatelessWidget {
  final  TestModel test;
  const TestTitle(   this.test);


 
  

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 180,
                  width: double.infinity,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Image.network(
                    test.name,
                    fit: BoxFit.cover,
                  ),
                ),
               
              ],
            ),
            SizedBox(height: 8),
            Text(
              test.email,
              maxLines: 2,
              style:
                  TextStyle(fontFamily: 'avenir', fontWeight: FontWeight.w800),
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: 8),
           
                  ],
                ),
              ),
           
        );
  }
}