import 'package:crud_operations/routes/routes_constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:crud_operations/feature/dashboard/student_form_controller.dart';

class StudentFormViewPage extends GetView<StudentFormController> {
  const StudentFormViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Student Form Page"),
        backgroundColor: Colors.green,
        actions: [
          IconButton(
            onPressed: () async {},
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body:
      Obx(() {
        if (controller.todos.isEmpty) {
          return const Center(child: Text('No Data found'));
        }
        return ListView.builder(
          itemCount: controller.todos.length,
          itemBuilder: (context, index) {
            final todo = controller.todos[index];
            return ListTile(
              title: Text(todo.name),
              textColor: Colors.red,
              subtitle: Column(
                children: [
                  Text(todo.percentage),
                  Text(todo.passoutYear.toString()),
                  Text(todo.city),
                ],
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Checkbox(
                  //   value: todo.isDone,
                  //   onChanged: (bool? value) {
                  //     print("todo id line 36");
                  //     print(value);
                  //     print(todo.id);
                  //     print("todo id 39");
                  //     controller.updateStatus(value!, todo.id);
                  //   },
                  // ),

                  IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () {
                      print('todo.id line 46');
                      print(todo.id);
                      print('todo.id line 48');
                      controller.deleteHrmData(todo.id);
                    },
                  ),
                ],
              ),
            );
          },
        );
      }),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed(RouteConstant.addForm);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
