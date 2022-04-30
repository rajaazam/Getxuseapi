import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String title;
  final void Function()? onTap;
  const MyButton({ Key? key, this.title="title", this.onTap }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap,
      child: Container(
        decoration: BoxDecoration(
           color: Colors.amber,
          borderRadius: BorderRadius.circular(30)
        ),
        alignment: Alignment.center,
        height: double.maxFinite,
        width: double.maxFinite,
       
        child: Text(title),
      ),
      
    );
  }
}