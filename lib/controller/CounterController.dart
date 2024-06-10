import 'package:get/get.dart';

class CounterController extends GetxController {
  final count = 0.obs; // obs is used to make the variable observable

  addCount() {
    count(count.value + 1);
  }

  deleteCount() {
    count(count.value - 1);
  }
}
