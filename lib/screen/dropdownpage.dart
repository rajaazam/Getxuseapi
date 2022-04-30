
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxapp1/controller/dropdownbtn.dart';
class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DropdownController>(builder: (controller) {
      return Scaffold(
        body: Column(children: [
          
          Text('Select Language: '),
          SizedBox(height: 10.0),
          DropdownButton<String>(
              hint: Text('Language'),
              value: controller.selectedValue,
              onChanged: (newValue) {
                controller.onSelected(newValue!);
              },
              elevation: 10,
              items: [
                DropdownMenuItem(
                  child: Text("English"),
                  value: controller.selectedValue,
                ),
                DropdownMenuItem(
                  child: Text("ESpanol"),
                  value: controller.selectedValue,
                ),
              ]),

            
        ]),
      );
    });
  }
}