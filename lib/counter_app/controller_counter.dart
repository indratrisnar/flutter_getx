import 'package:get/get.dart';

class ControllerCounter extends GetxController {
  final _counter = 0.obs;
  int get counter => _counter.value;
  void increment() => _counter.value++;
}
