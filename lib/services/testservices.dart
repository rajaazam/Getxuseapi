import 'package:getxapp1/models/testmodel.dart';
import 'package:http/http.dart' as http;

class TestServices {
  static var client = http.Client();

  static Future<List<TestModel>?> testdata() async {

    var response= await client.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    if (response.statusCode==200){

      var jsonString= response.body;
      return testFromJson(jsonString);
    }else{

      return null;
    }
  }
  
}