
import 'dart:convert';

import 'package:flutter/cupertino.dart';



class galleryModel with ChangeNotifier {
  galleryModel({
    required this.gid,
    required this.gimage,
  });

  String gid;
  String gimage;

}