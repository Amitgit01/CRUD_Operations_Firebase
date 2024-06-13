import 'package:cloud_firestore/cloud_firestore.dart';

class HrmModel {
  String id;
  String name;
  var percentage;
  int passoutYear;
  String city;

  HrmModel({
    required this.id,
    required this.name,
    required this.percentage,
    required this.passoutYear,
    required this.city,
  });

  factory HrmModel.fromDocumentSnapshot(DocumentSnapshot doc) {
    return HrmModel(
      id: doc.id,
      name: doc['name'],
      percentage: doc['percentage'],
      passoutYear: doc['passoutYear'],
      city: doc['city'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'percentage': percentage,
      'passoutYear': passoutYear,
      'city': city,
    };
  }
}
