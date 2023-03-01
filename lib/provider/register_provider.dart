import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:nepapp/models/city_model.dart';
import 'package:nepapp/models/institute_model.dart';
import 'package:nepapp/repo/home_repo.dart';
import 'package:shared_preferences/shared_preferences.dart';


class RegisterProvider with ChangeNotifier {
  final HomeRepository _homeRepo = HomeRepository();
  HomeRepository get homeRepo => _homeRepo;
  String cityName = "Select City";
  String instituteName = 'Select Institute';
  String courseName = "Select Course";
  String stream = "Select Stream";
  String gender = "Select Gender";
  String semester = "Select Semester";

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  TextEditingController get passwordController => _passwordController;


  TextEditingController get nameController => _nameController;
  final TextEditingController _emailController = TextEditingController();

  TextEditingController get emailController => _emailController;
  String profileImage = '';
  String user = 'Teacher';
  String city_id = "0";
  String institude_id = "0";
  bool instituteNameError = false;
  bool city_idError = false;
  bool nameError = false;
  bool emailError = false;
  bool cityNameError = false;
  bool _isLoading = false;
  bool passwordError = false;

  bool get isLoading => _isLoading;

  List<cityModel> _CityItems = [];
  List<instituteModel> _IntItems = [];

  List<instituteModel> get IntItems {
    return [..._IntItems];
  }

  List<cityModel> get CityItems {
    return [..._CityItems];
  }

 // getCity() async {
  //     _CityItems = [];
  //     _CityItems.add(cityModel(id: "0", name: "Select City"));
  //     await _homeRepo.fetchAndSetCity().then((response) {
  //       final responseData = json.decode(response);
  //       responseData['cities'].forEach((prodData) {
  //         _CityItems.add(cityModel(id: prodData['_id'], name: prodData['name']));
  //       });
  //     });
  //
  //     notifyListeners();
  //   }

  void updateInstitute(String value) {
    instituteName = value;
    for (var inst in IntItems) {
      if (inst.name == value) {
        institude_id = inst.id;
      }
    }
    notifyListeners();
  }

  void updateCityName(
    String value,
  ) {
    cityName = value;
    for (var city in CityItems) {
      if (city.name == value) {
        city_id = city.id;
      }
    }
    //getInstitute();
    notifyListeners();
  }

  void revupdateCityName(
    String value,
  ) {
    cityName = value;
    for (var city in CityItems) {
      if (city.name == value) {
        city_id = city.id;
      }
    }
    //getInstitute();
    notifyListeners();
  }

  void updateUserType(String value) {
    user = value;
    notifyListeners();
  }
  void updateGender(String value) {
    gender = value;
    notifyListeners();
  }

  void updateSemester(String value) {
    semester = value;
    notifyListeners();
  }
  void updateStream(String value) {
    stream = value;
    notifyListeners();
  }
  void updateCourse(String value) {
    courseName = value;
    notifyListeners();
  }
  uploadProfileImage(String filepath) async {
    profileImage = filepath;
    notifyListeners();
  }

//  getInstitute() async {
//     _IntItems = [];
//     _IntItems.add(instituteModel(
//       id: "0",
//       name: "Select Institute",
//     ));
//
//     await _homeRepo.fetchAndSetInstitute(city_id).then((response) {
//       final responseData = json.decode(response);
//       responseData['inst'].forEach((prodData) {
//         _IntItems.add(
//             instituteModel(id: prodData['_id'], name: prodData['name']));
//       });
//     });
//
//     notifyListeners();
//   }

//  register(BuildContext context) async {
//     bool emailValid = RegExp(
//             r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
//         .hasMatch(emailController.text);
//     nameError = false;
//     emailError = false;
//     cityNameError = false;
//     instituteNameError = false;
//     city_idError = false;
//     notifyListeners();
//     if (nameController.text.isEmpty &&
//         emailValid == true &&
//         emailController.text.isEmpty &&
//         cityName == "Select City" &&
//         city_id == "0" &&
//         instituteName == "Select Institute") {
//       nameError = true;
//       emailError = true;
//       cityNameError = true;
//       instituteNameError = true;
//       city_idError = true;
//     } else if (nameController.text.isEmpty) {
//       nameError = true;
//     } else if (emailController.text.isEmpty && emailValid == false) {
//       emailError = true;
//     } else if (cityName == "Select City") {
//       cityNameError = true;
//     } else if (instituteName == "Select Institute") {
//       instituteNameError = true;
//     } else if (city_id == "0") {
//       city_idError = true;
//     } else {
//       await _homeRepo
//           .register(
//         profileImage,
//         nameController.text,
//         emailController.text,
//         institude_id,
//         city_id,
//         user,
//       )
//           .then((response) async {
//         final responseData = json.decode(response);
//         print(responseData);
//         print(responseData["message"]);
//         await SharedPreferences.getInstance().then((prefs) {
//           // prefs.setString('_id', _id);
//           prefs.setString('mobile_token', '');
//           prefs.setString("mobile_id", '');
//           _showDialog("Register Successful, Please login", context);
//           // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const MainScreen()));
//         });
//       });
//     }
//     notifyListeners();
//   }

  void _showDialog(String message, BuildContext context) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Yellow Bus!'),
        content: Text(message),
        actions: <Widget>[
          ElevatedButton(
            style: ButtonStyle(
              fixedSize: MaterialStateProperty.all(const Size.fromHeight(40.0)),
              backgroundColor: MaterialStateProperty.all(Colors.blue),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0))),
            ),
            child: const Text('Okay'),
            onPressed: () {
              profileImage = "";
              nameController.text = "";
              emailController.text = "";
              cityName = "Select City";
              city_id = "0";
              institude_id = "0";
              user = 'Teacher';

              instituteName = 'Select Institute';
              profileImage = "";
              notifyListeners();
              Navigator.of(ctx).pop();
            },
          )
        ],
      ),
    );
  }
}
