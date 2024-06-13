import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:crud_operations/feature/form_add/formadd_controller.dart';

class FormAddPageView extends GetView<FormAddController> {
  const FormAddPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Data to firebase'),
      ),
// ------------------------------------------------------------------------------------------------------------------------------
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: controller.formKey,
            child: Column(
              children: [
// -----------------------------------------------------------------------------------------------------------------------------
                TextFormField(
                  controller: controller.nameController,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.person_2),
                    labelText: 'Name',
                    border: OutlineInputBorder(),
                  ),
                  validator: controller.nameValidator,
                ),
// ------------------------------------------------------------------------------------------------------------------------------
                const SizedBox(height: 20),
                TextFormField(
                  controller: controller.percentageController,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.percent_outlined),
                    labelText: 'Percentage',
                    border: OutlineInputBorder(),
                  ),
                  validator: controller.percentageValidator,
                ),
// ------------------------------------------------------------------------------------------------------------------------------
                const SizedBox(height: 20),
                TextFormField(
                  controller: controller.passoutYearController,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.calendar_month_outlined),
                    labelText: 'Passout Year',
                    border: OutlineInputBorder(),
                  ),
                  validator: controller.passoutYearValidator,
                ),
// ------------------------------------------------------------------------------------------------------------------------------
                const SizedBox(height: 20),
                TextFormField(
                  controller: controller.cityController,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.location_city_outlined),
                    labelText: 'City',
                    border: OutlineInputBorder(),
                  ),
                  validator: controller.cityValidator,
                ),
// ------------------------------------------------------------------------------------------------------------------------------
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    controller.submit();
                  },
                  child: const Text('Add Data'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
