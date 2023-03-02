import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nepapp/provider/register_provider.dart';
import 'package:nepapp/screens/main_class.dart';
import 'package:provider/provider.dart';
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    var reg = Provider.of<RegisterProvider>(context);
    //     var data = Provider.of<Onboarding>(context);


    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ));

    return Container(

      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(right: 20, left: 20),
                  height: 60,
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
                        fontFamily: "lato",
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ]),




                const SizedBox(
                  height: 30,
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
                    decoration: const InputDecoration(fillColor: Color(0x19f6e80b), filled: true, border: InputBorder.none),
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
                    decoration: const InputDecoration(fillColor: Color(0x19f6e80b), filled: true, border: InputBorder.none),
                  ),
                ),

                const SizedBox(
                  height: 40,
                ),
                Container(
                    width: width,
                    height: 50,
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: const Color(0xff1f1d1d)),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> MainScreen()));
                      },
                      child: Container(
                        width: width,
                        child: const Text(
                          "Submit",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xfff6e80b),
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
          ),
        ),
      ),

    );
  }
}
