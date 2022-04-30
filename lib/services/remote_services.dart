import 'package:getxapp1/models/newproduct.dart';
import 'package:http/http.dart' as http;


class RemoteServices {
  static var client = http.Client();

  static Future<List<NewProduct>?> fetchProducts() async {
    var response = await client.get(Uri.parse(
        'https://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline'));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return welcomeFromJson(jsonString);
    } else {
      //show error message
      return null;
    }
  }
}