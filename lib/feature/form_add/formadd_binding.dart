import 'package:crud_operations/feature/form_add/formadd_controller.dart';
import 'package:get/get.dart';

class FormAddBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(FormAddController());
  }
}
