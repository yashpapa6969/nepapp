
import 'dart:convert';

import 'package:flutter/cupertino.dart';



class studentModel with ChangeNotifier {
  studentModel({
    required this.id,
    required this.name,
    required this.classId,
    required this.image,
    required this.sectionId,
    required this.dob,
    required this.batch,
    required this.instituteId,
    required this.status,




  });

  String id;
  String name;
  String classId;
  String image;
  String sectionId;
  String dob;
  String batch;
  String instituteId;
  String status;




}