import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxapp1/screen/product_page.dart';
import 'package:getxapp1/widgets/form_input_field.dart';
import 'package:getxapp1/widgets/logo_graphic_header.dart';
import 'package:getxapp1/widgets/mybtn.dart';
import 'package:getxapp1/widgets/primary_button.dart';
class SignUpPage extends StatefulWidget {
  const SignUpPage({ Key? key }) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('Sign Up'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15),
          child:
        Column(
          children: [
              LogoGraphicHeader(),
              SizedBox(height: 40,),
              Container(
            child:FormInputField(
              labelText: 'FirstName',
              icon: Icon(Icons.person),
            ),
          ),
          SizedBox(height: 40,),
          Container(
            child:FormInputField(
              labelText: 'LastName',
                icon: Icon(Icons.person),
            ),
          ),
          SizedBox(height: 40,),
          Container(
            child:FormInputField(
              labelText: 'Email',
                icon: Icon(Icons.email),
            ),
          ),
          SizedBox(height: 40,),
           Container(
            child:FormInputField(
              obscureText: true,
              labelText: 'Password',
                icon: Icon(Icons.lock),
            ),
          ),
          SizedBox(height: 10,),
          // Container(
          //   child: MyButton(title:'Sign Up',
          //   onTap: ()=>Get.to(ProductPage()),),
          // )
            
            
            PrimaryButton(labelText: 'Sign Up',
            onPressed:()=>Get.to(ProductPage()),)
          
          ],
        ),),
      ),
    );
  }
}