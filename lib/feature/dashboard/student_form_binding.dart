import 'package:get/get.dart';
import 'package:crud_operations/feature/dashboard/student_form_controller.dart';

class StudentFormBinding extends Bindings{
  @override
  void dependencies(){
    Get.lazyPut(() => StudentFormController());
  }
}