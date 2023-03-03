import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class News extends StatefulWidget {
  const News({Key? key}) : super(key: key);

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ));
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
          Container(padding: const EdgeInsets.only(left: 10,top: 10),
          width: 327,
          height: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              const BoxShadow(
                color: Color(0x66000000),
                blurRadius: 15,
                offset: Offset(0, 8),
              ),
            ],
            color: const Color(0xffc54f0d),
          ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Container(
                  child:  const Text(
                    "Title",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: "Chillax",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                const Text(
                  "Aim",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: "Chillax",
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 10,),
                const Text(
                  "Description",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: "Chillax",
                    fontWeight: FontWeight.w500,
                  ),
                ),

              ],
            ),
          ),

          ],


        ),
      ),

    );
  }
}
