import 'package:flutter/cupertino.dart';

class Studentcategory {
  final String firstname;
  final String lastname;
  final String id;
  final String role;
  final String batch;
  final String status;
  final Image profile;

  Studentcategory(
      {required this.firstname,
      required this.id,
      required this.lastname,
      required this.role,
      required this.batch,
      required this.status,
      required this.profile});
}

class InstructorCategory {
  final String firstname;
  final String lastname;
  final String id;
  final String role;
  final Image profile;

  InstructorCategory(
      {required this.firstname,
      required this.lastname,
      required this.id,
      required this.role,
      required this.profile});
}

class SubjectCategory {
  final String subjectName;
  final String subjectCode;

  SubjectCategory({
    required this.subjectName,
    required this.subjectCode,
  });
}
