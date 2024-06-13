import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:crud_operations/feature/model/todos_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class FormAddController extends GetxController {
  final formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final percentageController = TextEditingController();
  final passoutYearController = TextEditingController();
  final cityController = TextEditingController();
  final FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

  Future<void> addData(HrmModel hrmModel) async {
    await firebaseFirestore.collection('todos').add(hrmModel.toMap());
  }

  String? nameValidator(String? value){
    if(value!.isEmpty){
      return 'Please enter your name';
    } else{
      return null;
    }
  }

  String? percentageValidator(String? value){
    if(value==null || value.isEmpty){
      return 'Please enter the percentage';
    }
    if(double.tryParse(value)==null || double.parse(value)<0 || double.parse(value)>100){
      return "Please enter value between 0 to 100.";
    }
    return null;
  }


  String? passoutYearValidator(String? value){
    if(value==null || value.isEmpty){
      return 'Please enter the passout Year';
    }
    if(int.tryParse(value) == null || int.parse(value)<1900 || int.parse(value)>DateTime.now().year){
      return 'Please enter a valid year.';
    }
    return null;
  }

  String? cityValidator(String? value){
    if(value!.isEmpty){
      return 'Please enter your city';
    } else{
      return null;
    }
  }

  submit() async {
    if(formKey.currentState!.validate()){
      HrmModel newHrmData = HrmModel(
        id: '',
        name: nameController.text,
        percentage: percentageController.text,
        passoutYear: int.parse(passoutYearController.text),
        city: cityController.text,
      );
      await addData(newHrmData);
      Get.back();
      Get.snackbar('Successful', 'Your data has been added.', snackPosition: SnackPosition.TOP,);
    }
  }

}
