
import 'dart:convert';

import 'package:flutter/cupertino.dart';



class sectionModel with ChangeNotifier {
  sectionModel({
    required this.id,
    required this.name,
  });

  String id;
  String name;

}