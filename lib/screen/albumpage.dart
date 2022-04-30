import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxapp1/controller/albumcontroller.dart';
import 'package:get/get.dart';

class AlbumPage extends StatelessWidget {
  const AlbumPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AlbumControler _contoroller =Get.put(AlbumControler());
    return Scaffold(
      appBar: AppBar(
        title: const Text('getx app '),
      ),
      body: Obx( ()=>_contoroller.isloading.value?
      CircularProgressIndicator():
      Center(
        child: Column(
          children: [
            Text('AlbumID: ${_contoroller.photoList[0].albumId}'),
             Text('ID: ${_contoroller.photoList[0].id}'),
              Text('Title: ${_contoroller.photoList[0].title}'),
              Image.network(_contoroller.photoList[0].thumbnailUrl)
            
          ],
        ),
      )

      ),
    );
  }
}