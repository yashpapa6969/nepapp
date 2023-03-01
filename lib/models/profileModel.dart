import 'dart:convert';

import 'package:flutter/cupertino.dart';

class profileModel with ChangeNotifier {
  profileModel({
    required this.name,
    required this.city,
    required this.institute_id,
    required this.user_type,
    required this.status,
    required this.email,
    required this.image,
  });

  String name;
  String user_type;
  String email;
  String image;

  String city;
  bool status;
  String institute_id;
}
