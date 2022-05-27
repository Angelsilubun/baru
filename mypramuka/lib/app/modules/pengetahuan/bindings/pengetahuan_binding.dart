import 'package:get/get.dart';

import '../controllers/pengetahuan_controller.dart';

class PengetahuanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PengetahuanController>(
      () => PengetahuanController(),
    );
  }
}
