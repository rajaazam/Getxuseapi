import 'package:get/get.dart';

class DropdownController extends GetxController {
   String selectedValue='';

  var language = <String>['English', 'Espanol'];

  void onSelected(String value) {
    selectedValue = value;
  }
}