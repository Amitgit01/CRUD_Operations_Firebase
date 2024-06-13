import 'package:crud_operations/feature/dashboard/student_form_binding.dart';
import 'package:crud_operations/feature/dashboard/student_form_view.dart';
import 'package:get/get.dart';
import 'package:crud_operations/feature/form_add/formadd_binding.dart';
import 'package:crud_operations/feature/form_add/formadd_view.dart';
import 'package:crud_operations/routes/routes_constant.dart';

List<GetPage> getPages = [
GetPage(name: RouteConstant.addForm, page: () => FormAddPageView(), binding: FormAddBinding()),
GetPage(name: RouteConstant.studentForm, page: () => StudentFormViewPage(), binding: StudentFormBinding())
];