import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxapp1/screen/cardpages.dart';
import 'package:getxapp1/screen/coursepage.dart';
import 'package:getxapp1/screen/homepage.dart';
import 'package:getxapp1/screen/morepage.dart';
import 'package:getxapp1/screen/product_page.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(40),
                  ),
                  gradient: LinearGradient(colors: [
                    Colors.grey.shade900,
                    Colors.grey.shade600,
                    Colors.grey.shade900
                  ])),
              child: const Center(
                child: Text(
                  'Getx',
                  style: TextStyle(fontSize: 50, color: Colors.white),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Center(
              child: Container(
                padding: const EdgeInsets.all(10.0),
                width: MediaQuery.of(context).size.width - 20,
                child: TextField(
                    autocorrect: true,
                    decoration: InputDecoration(
                        hintText: 'Search Getx',
                        helperStyle: const TextStyle(color: Colors.grey),
                        filled: true,
                        fillColor: Colors.white70,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50.0),
                          borderSide:
                              const BorderSide(color: Colors.grey, width: 2),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50.0),
                          borderSide: BorderSide(color: Colors.grey.shade200),
                        ))),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            //GetX start from here
            RichText(
                text: TextSpan(
                    text: 'First Getx',
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => Get.to(CardPage()),
                      //Get.to(ProductPage()),
                    style: TextStyle(
                      color: Colors.grey.shade600,
                      fontSize: 30,
                    ))),
            const SizedBox(
              height: 10,
            ),
            RichText(
                text: TextSpan(
              text: 'Expolar Text',
              recognizer: TapGestureRecognizer()
                ..onTap = () => Get.to(HomePage()),
              style: TextStyle(color: Colors.grey.shade600, fontSize: 30),
            )),
            const SizedBox(
              height: 20,
            ),
            // Divider(),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Navigate named routes',
              style: TextStyle(fontSize: 30),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
                child: Container(
              height: 100,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(50)),
                  gradient: LinearGradient(
                      colors: [Colors.grey, Colors.black, Colors.grey])),
              child: Container(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  children: [
                    Expanded(
                        child: Container(
                      width: 200,
                      height: 70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              elevation: 0,
                              primary: Colors.grey.shade600,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50.0))),
                          onPressed: () =>
                              Get.to(const CoursePage(), arguments: {
                                'PythonFees': 'Rs.100 per month',
                                'PhPFees': 'Rs.500 per month',
                                'AIFees': 'Rs.1500 per month'
                              }),
                          child: const Text(
                            'Course',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          )),
                    )),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: Container(
                      height: 70,
                      width: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            elevation: 0,
                            primary: Colors.grey.shade600,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0))),
                        onPressed: () => Get.to(const MorePage(), arguments: {
                          'Text': 'To selsect more than one course',
                          'price': 'Rs.500'
                        }),
                        child: const Text(
                          'More',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ))
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
