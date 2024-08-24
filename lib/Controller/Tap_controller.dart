import 'package:get/get.dart';

class TapController extends GetxController {
  int _x = 0;
  int get x => _x;
  void incresed() {
    _x++;
    print(_x);
    update();
  }

  void Dcressvlaue() {
    _x--;
    print(_x);
    update();
  }
}
