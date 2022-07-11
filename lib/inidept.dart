import 'package:get/instance_manager.dart';
import 'package:getx_concepts/controllers/tap_controller.dart';

class InitDep implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TapController>(() => TapController());
  }
}
