import 'package:get/state_manager.dart';

class TapController extends GetxController {
  int _x = 0;
  final RxInt _y = 0.obs;

  int get x => _x;
  int get y => _y.value;
  void increaseX() {
    _x++;
    update();
  }

  void decreaseX() {
    _x--;
    update();
  }

  void increaseY() {
    _y.value++;
  }

  void decreaseY() {
    _y.value++;
  }
}
