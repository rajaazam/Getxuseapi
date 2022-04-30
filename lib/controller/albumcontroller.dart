import 'dart:convert';

import 'package:get/get.dart';
import 'package:getxapp1/models/album_model.dart';
import 'package:http/http.dart' as http;

class AlbumControler extends GetxController{


  var photoList = <AlbumModel>[].obs;
  var isloading =true.obs;


  Future<void> fetchAlbumData() async {

    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/photos/3'));
    if (response.statusCode==200){
      AlbumModel _albumModeel=AlbumModel.fromJson(jsonDecode(response.body));
      photoList.add(

        AlbumModel(title:  _albumModeel.  title, 
        url:_albumModeel. url,
         thumbnailUrl: _albumModeel.
        thumbnailUrl,
         id:_albumModeel.id,
         
         albumId: _albumModeel.albumId)
      );
      isloading.value=false;
        //var isLoading;
        //isLoading.value = false;
      update();
    }else {
      Get.snackbar('Error Loading data!',
          'Sever responded: ${response.statusCode}:${response.reasonPhrase.toString()}');
    }
  }
}