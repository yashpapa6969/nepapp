import 'dart:io';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:nepapp/provider/register_provider.dart';
import 'package:nepapp/utils/colorConstants.dart';
import 'package:provider/provider.dart';





class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  static var _isInit = true;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  List<String> type = ["Select", "Staff"];
  List<String> gender  = ["Select Gender","Male","Female","Others"];
  List<String> semester = ["Select Semester","I","II","III","IV","V","VI","VII","VIII"];
  List<String> city = ["Select City"];
  List<String> institution = ["Select Institute"];
  List<String> course = ["Select Course"];
  List<String> stream = ["Select Stream"];



//  @override
//   void didChangeDependencies() {
//     super.didChangeDependencies();
//     if (_isInit) {
//       Provider.of<RegisterProvider>(context, listen: false).getCity();
//       setState(() {
//         _isInit = false;
//       });
//     }
//
//
//   }
//   @override
//   void dispose() {
//       setState(() {
//         _isInit = true;
//       });
//
//     super.dispose();
//   }


  @override
  Widget build(BuildContext context) {
    var reg = Provider.of<RegisterProvider>(context);
    //     var data = Provider.of<Onboarding>(context);


    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      //color set to transperent or set your own color
      statusBarIconBrightness: Brightness.dark,
      //set brightness for icons, like dark background light icons
    ));

    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.white,
                Color.fromRGBO(221, 161, 7,1)
              ]
          )
      ),
      child: Scaffold(
          resizeToAvoidBottomInset: true,
          backgroundColor: Colors.transparent,
          body: SafeArea(
              child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(right: 20, left: 20),
                  height: 60,
                  color: Colors.transparent,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Image(
                              image: Image.asset('assets/icons/goback.png').image,
                              height: 20.0,
                              width: 20.0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Row(children: [
                  Container(
                    padding: const EdgeInsets.only(
                      left: 20,
                    ),
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      "Register",
                      style: TextStyle(
                        color: Color(0xff1f1d1d),
                        fontSize: 28,
                        fontFamily: "Playfair Display",
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ]),




                const SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(left: 20),
                  child: const Text(
                    "Name",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xff1f1d1d),
                      fontSize: 16,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: width,
                  height: 50,
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: TextFormField(
                    decoration: const InputDecoration(fillColor: Color.fromRGBO(255, 250, 221,1), filled: true, border: InputBorder.none),
                    controller: reg.nameController,

                  ),
                ),
                Visibility(
                visible: reg.nameError,
                  child: Column(
                    children: const [
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "*Name is Invalid.",
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 12,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(left: 20),
                  child: const Text(
                    "Email Address",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xff1f1d1d),
                      fontSize: 16,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: width,
                  height: 50,
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: TextFormField(
                     controller: reg.emailController,
                      keyboardType: TextInputType.emailAddress,
                      onChanged: (value) {

                      },
                      decoration: const InputDecoration(fillColor: Color.fromRGBO(255, 250, 221,1), filled: true, border: InputBorder.none),
                    ),
                ),
                Visibility(
                  visible: reg.emailError,
                  child: Column(
                    children: const [
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "*Email is Invalid.",
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 12,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(left: 20),
                  child: const Text(
                    "Password",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xff1f1d1d),
                      fontSize: 16,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: width,
                  height: 50,
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: TextFormField(
                    controller: reg.passwordController,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    onChanged: (value) {

                    },
                    decoration: const InputDecoration(fillColor: Color.fromRGBO(255, 250, 221,1), filled: true, border: InputBorder.none),
                  ),
                ),
                Visibility(
                  visible: reg.passwordError,
                  child: Column(
                    children: const [
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "*Password is Invalid.",
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 12,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
            Container(padding: EdgeInsets.only(left: 20),
              alignment: Alignment.centerLeft,
                  child: const Text(
                    "Gender",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),


                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
               Padding(padding: EdgeInsets.only(left: 20,right: 20),
                 child: Container(
                      height: 40,
                      width: width,
                      decoration: BoxDecoration(
                        color:  ConstantColors.button,
                        border: Border.all(width: 1, color: Colors.white),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton2<String>(
                          buttonPadding: const EdgeInsets.only(left: 8, right: 8),
                          alignment: AlignmentDirectional.centerStart,
                          //   borderRadius: BorderRadius.circular(12),
                          //   color: ConstantColors.mainColor,
                          // ),
                          buttonHeight: 20,
                          buttonWidth: 60,
                          itemHeight: 35,
                          dropdownMaxHeight: height * 0.60,
                          value: reg.gender,
                          icon:
                          const Icon(Icons.arrow_drop_down, color: Colors.black),
                          onChanged: (newValue) {
                            reg.updateGender(newValue!);
                          },
                          items: gender.map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Row(
                                children: [
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(value,
                                      style: const TextStyle(
                                        fontFamily: "lato",
                                        color: Colors.black,
                                        fontSize: 17,
                                      ))
                                ],
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
               ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20),
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        "Semester",
                        style: TextStyle(
                          color:ConstantColors.text,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                  Padding(padding: EdgeInsets.only(left: 20,right: 20),
                    child: Container(
                            height: 40,
                            width: width,
                            decoration: BoxDecoration(
                              color:  ConstantColors.button,
                              border: Border.all(width: 1, color: Colors.white),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(5),
                              ),
                            ),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton2<String>(
                                buttonPadding: const EdgeInsets.only(left: 8, right: 8),
                                alignment: AlignmentDirectional.centerStart,
                                //   borderRadius: BorderRadius.circular(12),
                                //   color: ConstantColors.mainColor,
                                // ),
                                buttonHeight: 20,
                                buttonWidth: 60,
                                itemHeight: 35,
                                dropdownMaxHeight: height * 0.60,
                                value: reg.semester,
                                icon:
                                const Icon(Icons.arrow_drop_down, color: Colors.black),
                                onChanged: (newValue) {
                                  reg.updateSemester(newValue!);
                                },
                                items: semester.map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Row(
                                      children: [
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Text(value,
                                            style: const TextStyle(
                                              fontFamily: "lato",
                                              color: Colors.black,
                                              fontSize: 17,
                                            ))
                                      ],
                                    ),
                                  );
                                }).toList(),
                              ),
                            ),
                          ),
                  ),

                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.only(left: 20),
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    "City",
                    style: TextStyle(
                      color:ConstantColors.text,
                      fontSize: 16,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Padding(padding: EdgeInsets.only(left: 20,right: 20),
                  child: Container(
                    height: 40,
                    width: width,
                    decoration: BoxDecoration(
                      color:  ConstantColors.button,
                      border: Border.all(width: 1, color: Colors.white),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton2<String>(
                        buttonPadding: const EdgeInsets.only(left: 8, right: 8),
                        alignment: AlignmentDirectional.centerStart,
                        //   borderRadius: BorderRadius.circular(12),
                        //   color: ConstantColors.mainColor,
                        // ),
                        buttonHeight: 20,
                        buttonWidth: 60,
                        itemHeight: 35,
                        dropdownMaxHeight: height * 0.60,
                        value: reg.cityName,
                        icon:
                        const Icon(Icons.arrow_drop_down, color: Colors.black),
                        onChanged: (newValue) {
                          reg.updateCityName(newValue!);
                        },
                        items: city.map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Row(
                              children: [
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(value,
                                    style: const TextStyle(
                                      fontFamily: "lato",
                                      color: Colors.black,
                                      fontSize: 17,
                                    ))
                              ],
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ),

                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.only(left: 20),
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    "Institute",
                    style: TextStyle(
                      color:ConstantColors.text,
                      fontSize: 16,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Padding(padding: EdgeInsets.only(left: 20,right: 20),
                  child: Container(
                    height: 40,
                    width: width,
                    decoration: BoxDecoration(
                      color:  ConstantColors.button,
                      border: Border.all(width: 1, color: Colors.white),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton2<String>(
                        buttonPadding: const EdgeInsets.only(left: 8, right: 8),
                        alignment: AlignmentDirectional.centerStart,
                        //   borderRadius: BorderRadius.circular(12),
                        //   color: ConstantColors.mainColor,
                        // ),
                        buttonHeight: 20,
                        buttonWidth: 60,
                        itemHeight: 35,
                        dropdownMaxHeight: height * 0.60,
                        value: reg.instituteName,
                        icon:
                        const Icon(Icons.arrow_drop_down, color: Colors.black),
                        onChanged: (newValue) {
                          reg.updateInstitute(newValue!);
                        },
                        items: institution.map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Row(
                              children: [
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(value,
                                    style: const TextStyle(
                                      fontFamily: "lato",
                                      color: Colors.black,
                                      fontSize: 17,
                                    ))
                              ],
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ),

                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.only(left: 20),
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    "Stream",
                    style: TextStyle(
                      color:ConstantColors.text,
                      fontSize: 16,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Padding(padding: EdgeInsets.only(left: 20,right: 20),
                  child: Container(
                    height: 40,
                    width: width,
                    decoration: BoxDecoration(
                      color:  ConstantColors.button,
                      border: Border.all(width: 1, color: Colors.white),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton2<String>(
                        buttonPadding: const EdgeInsets.only(left: 8, right: 8),
                        alignment: AlignmentDirectional.centerStart,
                        //   borderRadius: BorderRadius.circular(12),
                        //   color: ConstantColors.mainColor,
                        // ),
                        buttonHeight: 20,
                        buttonWidth: 60,
                        itemHeight: 35,
                        dropdownMaxHeight: height * 0.60,
                        value: reg.stream,
                        icon:
                        const Icon(Icons.arrow_drop_down, color: Colors.black),
                        onChanged: (newValue) {
                          reg.updateStream(newValue!);
                        },
                        items: stream.map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Row(
                              children: [
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(value,
                                    style: const TextStyle(
                                      fontFamily: "lato",
                                      color: Colors.black,
                                      fontSize: 17,
                                    ))
                              ],
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ),

                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.only(left: 20),
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    "Course",
                    style: TextStyle(
                      color:ConstantColors.text,
                      fontSize: 16,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Padding(padding: EdgeInsets.only(left: 20,right: 20),
                  child: Container(
                    height: 40,
                    width: width,
                    decoration: BoxDecoration(
                      color:  ConstantColors.button,
                      border: Border.all(width: 1, color: Colors.white),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton2<String>(
                        buttonPadding: const EdgeInsets.only(left: 8, right: 8),
                        alignment: AlignmentDirectional.centerStart,
                        //   borderRadius: BorderRadius.circular(12),
                        //   color: ConstantColors.mainColor,
                        // ),
                        buttonHeight: 20,
                        buttonWidth: 60,
                        itemHeight: 35,
                        dropdownMaxHeight: height * 0.60,
                        value: reg.courseName,
                        icon:
                        const Icon(Icons.arrow_drop_down, color: Colors.black),
                        onChanged: (newValue) {
                          reg.updateCourse(newValue!);
                        },
                        items: course.map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Row(
                              children: [
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(value,
                                    style: const TextStyle(
                                      fontFamily: "lato",
                                      color: Colors.black,
                                      fontSize: 17,
                                    ))
                              ],
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ),

                const SizedBox(
                  height: 20,
                ),
                Container(
                    width: width,
                    height: 50,
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: const Color(0xffc54f0d)),
                      onPressed: () {
                     //   reg.register(context);
                      },
                      child: Container(
                        width: width,
                        child: const Text(
                          "Submit",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: "Lato",
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    )),

                const SizedBox(
                  height: 50,
                ),
               ],
            ),
          ))),
    );
  }
}
