import 'package:crud_operations/feature/model/todos_model.dart';
import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class StudentFormController extends GetxController{
  final FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

  var todos = <HrmModel>[].obs;

  @override
  void onInit(){
    super.onInit();
    todos.bindStream(todoStream());
  }

  Stream<List<HrmModel>> todoStream() {
    return firebaseFirestore.collection('todos').snapshots()
        .map((QuerySnapshot query) {
      List<HrmModel> todos = [];

      for (var todo in query.docs) {
        final hrmModel = HrmModel.fromDocumentSnapshot(todo);
        todos.add(hrmModel);
      }
      print(todos);
      return todos;
    });
  }

  Future<void> updateStatus(bool isDone, String documentId) async {
    await firebaseFirestore
        .collection('todos')
        .doc(documentId)
        .update({'isDone': isDone});
  }

  Future<void> deleteHrmData(String documentId) async {
    await firebaseFirestore
        .collection('todos')
        .doc(documentId)
        .delete();
  }

}