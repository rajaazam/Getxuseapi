
import 'package:get/instance_manager.dart';
import 'package:getxapp1/controller/albumcontroller.dart';

class ControllerBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<AlbumControler>(AlbumControler());
  }
}