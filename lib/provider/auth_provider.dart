import 'dart:convert';
import 'dart:async';


import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import 'package:nepapp/screens/main_class.dart';
import 'package:nepapp/utils/url.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:nepapp/utils/shared_preference.dart';


class AuthProvider with ChangeNotifier {
  String token = '';
  String _id = '';
  String student_id = '';
  String institute_id = '';
  String course = '';


  String type = '';
  String phone = '';
  String email = '';
  String langId = '';
  String catId = '';
  String message = '';
  String name = '';
  String otp = '';
  String studentName = '';
  String selected_country_code = '+91';
  String image = '';
  bool _isLoading = false;
  bool get isLoading => _isLoading;
  String verificationid = '';



 // final HomeRepository _homeRepo = HomeRepository();
  //   HomeRepository get homeRepo => _homeRepo;
  int status = 0;
  bool mobileError = false;
  bool loading = false;
  bool otpError = false;
  bool nameError = false;




  String classname = "All Classes";
  String sectionName = "All Sections";

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();


  TextEditingController get emailController => _emailController;
  TextEditingController get passwordController => _passwordController;

  final SharedPrefrence _saveData = SharedPrefrence();

  SharedPrefrence get saveData => _saveData;

  bool get isAuth {
    print("here" + _id != '');
    // ignore: avoid_print
    return _id.isNotEmpty && type != "register";
  }

  String get _token {
    if (token.isNotEmpty) {
      return token;
    }
    return '';
  }


  String get userId {
    return _id;
  }
  void updatePhone(String value)
{
  phone = value;
}
  void updatevid(String value)
  {
    verificationid = value;
  }
  void updateLoginStatus(int value, BuildContext context) {
    if (value == 0) {
      // Navigator.popAndPushNamed(
      //   context,
      //   Login.routeName,
      // );
    } else {
      // Navigator.popAndPushNamed(
      //   context,
      //   Otp.routeName,
      // );
    }

    // notifyListeners();
  }
  Login(BuildContext context) async {
    // ignore: avoid_print
    loading = true;
    notifyListeners();
    final url = Uri.parse(URL.url+'client/login');
    try {
      final response = await http.post(url, headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      }, body:jsonEncode(<String, String> {
        "email": emailController.text.toString(),
        "password": passwordController.text.toString()
      }));
      final responseData = json.decode(response.body);
      print(responseData);
      loading = false;

      if (responseData['status'] == "success") {
        otpError = false;
        student_id = responseData['student_id'];
        institute_id = responseData['institute_id'];
        course = responseData['course'];

        message = responseData['message'];

        await SharedPreferences.getInstance().then((prefs) {
          // prefs.setString('_id', _id);
          prefs.setString('student_id', student_id);
          prefs.setString('student_id', institute_id);
          prefs.setString('student_id', course);



          // Navigator.popAndPushNamed(
          //   context,
          //   MainScreen.routeName,
          // );
        });
        if (message == "successfully authenticated") {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MainScreen()));

        } else {
          otpError = true;
          notifyListeners();
        }

        // //  notifyListeners();

        notifyListeners();
      }
      // ignore: empty_catches
    } catch (error) {
      print(error);
      rethrow;
    }
    _passwordController.text = "";
    _emailController.text = '';
    message = '';

  }

  Future<bool> tryAutoLogin() async {
    final saveData = await SharedPreferences.getInstance();
    if (!saveData.containsKey('student_id')) {
      return false;
    }
    print(saveData.getString("student_id"));
    student_id = saveData.getString("student_id")!;
    notifyListeners();
    return true;
  }





}
