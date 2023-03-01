
import 'dart:convert';

import 'package:flutter/cupertino.dart';



class classModel with ChangeNotifier {
  classModel({
    required this.id,
    required this.name,
  });

  String id;
  String name;

}