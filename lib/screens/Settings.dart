import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nepapp/screens/about_first.dart';
class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
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

                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.only(
                    left: 20,
                  ),
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    "Settings",
                    style: TextStyle(
                      color: Color(0xff1f1d1d),
                      fontSize: 28,
                      fontFamily: "lato",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 50,),

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
                          "Update App",
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
                SizedBox(height: 30,),
                Container(
                    width: width,
                    height: 50,
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary:  Color(0xffc54f0d)),
                      onPressed: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>About()));

                      },
                      child: Container(
                        width: width,
                        child: const Text(
                          "SignOut",
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
              ],
            ),
          ),
        ),
      ),

    );
  }
}
//Container(
//               padding: const EdgeInsets.only(right: 20, left: 20),
//               height: 60,
//               color: Colors.white,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Row(
//                     children: [
//                       GestureDetector(
//                         onTap: () {
//                           Navigator.pop(context);
//                         },
//                         child: Image(
//                           image: Image.asset('assets/icons/goback.png').image,
//                           height: 20.0,
//                           width: 20.0,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//
//             const SizedBox(
//               height: 20,
//             ),
//             Container(
//               padding: const EdgeInsets.only(
//                 left: 20,
//               ),
//               alignment: Alignment.centerLeft,
//               child: const Text(
//                 "Enter OTP",
//                 style: TextStyle(
//                   color: Color(0xff1f1d1d),
//                   fontSize: 28,
//                   fontFamily: "Playfair Display",
//                   fontWeight: FontWeight.w600,
//                 ),
//               ),
//             ),